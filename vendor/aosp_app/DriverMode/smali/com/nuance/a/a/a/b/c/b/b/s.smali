.class public Lcom/nuance/a/a/a/b/c/b/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/c$b;
.implements Lcom/nuance/a/a/a/b/c/c/b;


# static fields
.field private static final g:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field protected a:B

.field private h:Lcom/nuance/a/a/a/b/c/b/b/a;

.field private i:Lcom/nuance/a/a/a/b/c/c/e;

.field private j:Lcom/nuance/a/a/a/b/c/c/f;

.field private k:Lcom/nuance/a/a/a/b/c/b/a/b;

.field private l:Lcom/nuance/a/a/a/b/a/a/b;

.field private m:S

.field private n:Lcom/nuance/a/a/a/a/b/a/c;

.field private o:Lcom/nuance/a/a/a/a/b/a/f$a;

.field private p:J

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

.field private u:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/a/a/a/a/b/a/c;Lcom/nuance/a/a/a/b/c/c/f;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/a/a/a/b/c/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/a/a/a/a/a/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/nuance/a/a/a/b/a/c/a;Lcom/nuance/a/a/a/b/c/b/b/a;Lcom/nuance/a/a/a/b/c/c/e;B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/4 v2, -0x1

    iput-short v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->s:Z

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v3, "PDXTransactionImpl()"

    invoke-virtual {v2, v3}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    iput-object p5, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    iput-object p2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->p:J

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->i:Lcom/nuance/a/a/a/b/c/c/e;

    move/from16 v0, p23

    iput-byte v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    iput-object p3, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->r:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->q:Z

    invoke-virtual/range {p21 .. p21}, Lcom/nuance/a/a/a/b/c/b/b/a;->g()Lcom/nuance/a/a/a/b/c/a/a;

    move-result-object v2

    check-cast v2, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-virtual {v2}, Lcom/nuance/a/a/a/b/c/b/a/a;->h()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/nuance/a/a/a/b/c/b/b/s$a;

    iget-byte v3, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    invoke-direct {v2, v3, p0}, Lcom/nuance/a/a/a/b/c/b/b/s$a;-><init>(ILcom/nuance/a/a/a/b/c/b/b/s;)V

    iput-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v3, "INTERNAL_ERROR"

    invoke-static {v2, v3}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-short v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p6, v2, v3

    const/4 v3, 0x1

    aput-object p7, v2, v3

    const/4 v3, 0x2

    aput-object p8, v2, v3

    const/4 v3, 0x3

    aput-object p9, v2, v3

    const/4 v3, 0x4

    aput-object p10, v2, v3

    const/4 v3, 0x5

    aput-object p11, v2, v3

    const/4 v3, 0x6

    aput-object p12, v2, v3

    const/4 v3, 0x7

    aput-object p13, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/Short;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Short;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    aput-object p14, v2, v3

    const/16 v3, 0xb

    aput-object p15, v2, v3

    const/16 v3, 0xc

    aput-object p16, v2, v3

    const/16 v3, 0xd

    aput-object p17, v2, v3

    const/16 v3, 0xe

    aput-object p4, v2, v3

    const/16 v3, 0xf

    aput-object p3, v2, v3

    const/16 v3, 0x10

    aput-object p20, v2, v3

    new-instance v3, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {p1}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {p1, v3, p0, v2, v4}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static synthetic a(Lcom/nuance/a/a/a/b/c/b/b/s;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/a/a/a/b/c/b/b/s;Lcom/nuance/a/a/a/b/c/b/b/s$a;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/a/d;->g()Lcom/nuance/a/a/a/b/c/a/a;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/a/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "appendLogToResLogs: NMSPDefines.DEVICE_CMD_LOG_TO_SERVER_ENABLED is disabled."

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/a/a/a/b/c/b/b/s;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->l:Lcom/nuance/a/a/a/b/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->l:Lcom/nuance/a/a/a/b/a/a/b;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->l:Lcom/nuance/a/a/a/b/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->l:Lcom/nuance/a/a/a/b/a/a/b;

    const-string v1, "NMASResponse"

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v0

    :try_start_0
    const-string v1, "ResultType"

    invoke-interface {v0, v1, p1}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v0

    const-string v1, "QUERY_RESULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IsFinal"

    invoke-interface {v0, v1, p2}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Z)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/a/a/a/b/c/b/b/s;)S
    .locals 1

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    return v0
.end method

.method private static b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->a(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nuance/a/a/a/b/c/b/b/s;)Lcom/nuance/a/a/a/b/c/c/f;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/a/a/a/b/c/b/b/s;)Lcom/nuance/a/a/a/b/c/b/b/s$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/a/a/a/b/c/b/b/s;)Lcom/nuance/a/a/a/b/c/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    return-object v0
.end method

.method static synthetic g()Lcom/nuance/a/a/a/a/b/a/b$a;
    .locals 1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v3, 0x1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXTransactionImpl.end()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "PDXTransactionImpl.end() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/a/a/a/b/b/e;

    const-string v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/a/a/a/b/b/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v4}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v0, v2, p0, v3, v4}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-ne v0, v3, :cond_4

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "PDXTransactionImpl.end() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/a/a/a/b/b/e;

    const-string v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/a/a/a/b/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "PDXTransactionImpl.end() transaction already expired!"

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/a/a/a/b/b/f;

    const-string v2, "transaction already expired!"

    invoke-direct {v0, v2}, Lcom/nuance/a/a/a/b/b/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/b/b/l;B)V
    .locals 5

    const/4 v2, -0x1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXTransactionImpl.onQueryError()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-byte v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const/4 v0, -0x1

    :try_start_1
    iput-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const-string v0, "QUERY_ERROR"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/a/b/a/c;->a(Lcom/nuance/a/a/a/a/b/a/f$a;)Z

    :cond_3
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "QUERY_ERROR"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/c/c/f;->a(Lcom/nuance/a/a/a/b/c/c/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got exp in PDXCommandListener.PDXQueryErrorReturned() ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/b/b/n;B)V
    .locals 5

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXTransactionImpl.onQueryResults()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-byte v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    if-eq p2, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->q:Z

    const-string v0, "QUERY_RESULT"

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/n;->g()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/n;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/a/b/a/c;->a(Lcom/nuance/a/a/a/a/b/a/f$a;)Z

    :cond_4
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/n;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "FINAL_RESULT"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/c/c/f;->a(Lcom/nuance/a/a/a/b/c/c/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got exp in PDXCommandListener.PDXQueryResultReturned() ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/b/b/o;B)V
    .locals 5

    const/4 v2, -0x1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXTransactionImpl.onQueryRetry()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-byte v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const/4 v0, -0x1

    :try_start_1
    iput-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const-string v0, "QUERY_RETRY"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/a/b/a/c;->a(Lcom/nuance/a/a/a/a/b/a/f$a;)Z

    :cond_3
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "QUERY_RETRY"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/c/c/f;->a(Lcom/nuance/a/a/a/b/c/c/j;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got exp in PDXCommandListener.PDXQueryRetryReturned() ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/nuance/a/a/a/b/c/c/g;)V
    .locals 6

    const/4 v3, 0x2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXTransactionImpl.sendParam()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "PDXTransactionImpl.sendParam() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/a/a/a/b/b/e;

    const-string v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/a/a/a/b/b/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v4}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v0, v2, p0, v3, v4}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    monitor-exit v1

    return-void

    :cond_4
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "PDXTransactionImpl.sendParam() transaction already finished!"

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/a/a/a/b/b/e;

    const-string v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/a/a/a/b/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "PDXTransactionImpl.sendParam() transaction already expired!"

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/a/a/a/b/b/f;

    const-string v2, "transaction already expired!"

    invoke-direct {v0, v2}, Lcom/nuance/a/a/a/b/b/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 24

    check-cast p1, Lcom/nuance/a/a/a/a/b/a/c$a;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/nuance/a/a/a/a/b/a/c$a;->a:B

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v2, v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v2, v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v9, v2, v9

    check-cast v9, Lcom/nuance/a/a/a/a/a/a$a;

    const/4 v10, 0x7

    aget-object v10, v2, v10

    check-cast v10, Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v11, v2, v11

    check-cast v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    const/16 v12, 0x9

    aget-object v12, v2, v12

    check-cast v12, Ljava/lang/Short;

    invoke-virtual {v12}, Ljava/lang/Short;->shortValue()S

    move-result v12

    const/16 v13, 0xa

    aget-object v13, v2, v13

    check-cast v13, Ljava/lang/String;

    const/16 v14, 0xb

    aget-object v14, v2, v14

    check-cast v14, Ljava/lang/String;

    const/16 v15, 0xc

    aget-object v15, v2, v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0xd

    aget-object v16, v2, v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/a/a/a/b/c/b/a/b;->f()[B

    move-result-object v17

    const/16 v18, 0xe

    aget-object v18, v2, v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0xf

    aget-object v19, v2, v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x10

    aget-object v20, v2, v20

    check-cast v20, Lcom/nuance/a/a/a/b/a/c/a;

    new-instance v2, Lcom/nuance/a/a/a/c/b;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/a/a/a/b/c/b/b/a;->d:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/nuance/a/a/a/c/b;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v2}, Lcom/nuance/a/a/a/c/b;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Lcom/nuance/a/a/a/a/d/e;->c(Lcom/nuance/a/a/a/a/a/a$a;)Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v9

    :cond_1
    invoke-static {}, Lcom/nuance/a/a/a/b/c/b/a/d;->i()J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v2}, Lcom/nuance/a/a/a/b/c/b/a/b;->j()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v21, "NMASCommand"

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v2

    :try_start_0
    const-string v21, "Name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->r:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v2, v0, v1}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v2

    const-string v21, "Tid"

    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v2, v0, v1}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->l:Lcom/nuance/a/a/a/b/a/a/b;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_1
    new-instance v2, Lcom/nuance/a/a/a/b/c/b/b/j;

    invoke-direct/range {v2 .. v20}, Lcom/nuance/a/a/a/b/c/b/b/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/a/a/a/a/a/a$a;Ljava/lang/String;SSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/a/d;->g()Lcom/nuance/a/a/a/b/c/a/a;

    move-result-object v3

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/a/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-nez v3, :cond_3

    sget-object v3, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v4, "appendLogToQueryBegin: NMSPDefines.DEVICE_CMD_LOG_TO_SERVER_ENABLED is disabled"

    invoke-virtual {v3, v4}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/16 v3, 0xa25

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SEND_BCP_BEGIN"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/a/a/a/b/c/b/b/j;->f()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V

    if-eqz v17, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->s:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->s:Z

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PDXCommandCreated() called from handleInit()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/nuance/a/a/a/b/c/b/b/s;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->i:Lcom/nuance/a/a/a/b/c/c/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->i:Lcom/nuance/a/a/a/b/c/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/nuance/a/a/a/b/c/b/b/s;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/a/a/a/b/c/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "got exp in PDXCommandListener.PDXCommandCreated() ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] msg ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_4

    sget-object v3, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v4, "appendLogToQueryBegin: nmasResLogsToServer is empty, nothing to log to server"

    invoke-virtual {v3, v4}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    new-instance v7, Lcom/nuance/a/a/a/b/a/b/b/d;

    invoke-direct {v7}, Lcom/nuance/a/a/a/b/a/b/b/d;-><init>()V

    new-instance v8, Lcom/nuance/a/a/a/b/a/b/b/g;

    invoke-direct {v8}, Lcom/nuance/a/a/a/b/a/b/b/g;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_3
    if-ge v5, v6, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/a/a/a/b/c/b/b/s$a;

    invoke-virtual {v4}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->a()I

    move-result v9

    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    if-eq v9, v10, :cond_5

    new-instance v9, Lcom/nuance/a/a/a/b/a/b/b/d;

    invoke-direct {v9}, Lcom/nuance/a/a/a/b/a/b/b/d;-><init>()V

    const-string v10, "id"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->a()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc1

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/a/a/a/b/a/b/b/d;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v10, "status"

    invoke-virtual {v4}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc1

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/a/a/a/b/a/b/b/d;->a(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {v8, v9}, Lcom/nuance/a/a/a/b/a/b/b/g;->a(Lcom/nuance/a/a/a/b/a/c/a;)V

    invoke-virtual {v4}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->d()V

    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    :cond_6
    const-string v3, "device_log"

    invoke-virtual {v7, v3, v8}, Lcom/nuance/a/a/a/b/a/b/b/d;->a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/b;)V

    const-string v3, "app_info"

    invoke-virtual {v2, v3, v7}, Lcom/nuance/a/a/a/b/c/b/b/j;->a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)V

    goto/16 :goto_2

    :pswitch_1
    check-cast v2, Lcom/nuance/a/a/a/b/c/c/g;

    move-object v3, v2

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/b/i;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/b/i;->c()B

    move-result v3

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    move-object v3, v2

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/b/q;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/b/q;->a()I

    move-result v5

    move-object v3, v2

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/b/q;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/b/q;->e()Lcom/nuance/a/a/a/b/b/a;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    invoke-virtual {v4, v5, v3, v6}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(ILcom/nuance/a/a/a/b/b/a;Lcom/nuance/a/a/a/b/c/b/a/c;)V

    :cond_7
    invoke-static {}, Lcom/nuance/a/a/a/b/c/b/a/d;->i()J

    instance-of v3, v2, Lcom/nuance/a/a/a/b/c/b/b/b;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/b/b;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/b/b;->b()Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    check-cast v3, Lcom/nuance/a/a/a/b/c/b/b/b;

    invoke-virtual {v3}, Lcom/nuance/a/a/a/b/c/b/b/b;->a()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->l:Lcom/nuance/a/a/a/b/a/a/b;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->l:Lcom/nuance/a/a/a/b/a/a/b;

    const-string v6, "NMASAudioParameter"

    invoke-interface {v5, v6}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v5

    :try_start_2
    const-string v6, "Name"

    invoke-interface {v5, v6, v4}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v4

    const-string v5, "AudioId"

    invoke-interface {v4, v5, v3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;I)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;
    :try_end_2
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_2 .. :try_end_2} :catch_1

    :cond_8
    :goto_4
    new-instance v5, Lcom/nuance/a/a/a/b/c/b/b/m;

    check-cast v2, Lcom/nuance/a/a/a/b/c/b/b/i;

    invoke-direct {v5, v2}, Lcom/nuance/a/a/a/b/c/b/b/m;-><init>(Lcom/nuance/a/a/a/b/c/b/b/i;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/16 v3, 0xa19

    const-string v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/a/a/a/b/c/b/b/m;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V

    goto/16 :goto_0

    :pswitch_2
    check-cast v2, [B

    invoke-static {}, Lcom/nuance/a/a/a/b/c/b/a/d;->i()J

    new-instance v5, Lcom/nuance/a/a/a/b/c/b/b/f;

    invoke-direct {v5, v2}, Lcom/nuance/a/a/a/b/c/b/b/f;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/16 v3, 0xa19

    const-string v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/a/a/a/b/c/b/b/f;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/nuance/a/a/a/b/c/b/a/d;->i()J

    new-instance v5, Lcom/nuance/a/a/a/b/c/b/b/k;

    invoke-direct {v5}, Lcom/nuance/a/a/a/b/c/b/b/k;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->k:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/16 v3, 0xa19

    const-string v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/a/a/a/b/c/b/b/k;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->h:Lcom/nuance/a/a/a/b/c/b/b/a;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V

    new-instance v2, Lcom/nuance/a/a/a/b/c/b/b/s$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/a/a/a/b/c/b/b/s$1;-><init>(Lcom/nuance/a/a/a/b/c/b/b/s;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->p:J

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/a/a/a/a/b/a/c;->a(Lcom/nuance/a/a/a/a/b/a/f$a;J)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/nuance/a/a/a/b/c/c/f;->a(S)V

    goto/16 :goto_0

    :pswitch_5
    check-cast v2, Lcom/nuance/a/a/a/b/c/c/b$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->a(Lcom/nuance/a/a/a/b/c/c/b$a;)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_4

    :catch_2
    move-exception v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(S)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, -0x1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXTransactionImpl.onSessionDisconnected() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/a/b/a/c;->a(Lcom/nuance/a/a/a/a/b/a/f$a;)Z

    :cond_1
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-ne v0, v6, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_4

    :try_start_1
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/b/c/c/f;->a(S)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    const/4 v0, 0x2

    :try_start_2
    iput-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    if-ne p1, v5, :cond_5

    :try_start_3
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/b/c/c/f;->a(S)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got exp in PDXCommandListener.PDXCommandEvent() or PDXManagerListener.PDXManagerError() or PDXManagerListener.PDXManagerDisconnected() reasonCode ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_5
    if-ne p1, v4, :cond_6

    :try_start_5
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "TIMEOUT_IDLE"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/b/c/c/f;->a(S)V

    goto :goto_1

    :cond_6
    if-ne p1, v7, :cond_7

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->i:Lcom/nuance/a/a/a/b/c/c/e;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/c/e;->a()V

    goto :goto_1

    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->i:Lcom/nuance/a/a/a/b/c/c/e;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/c/e;->a()V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/b/c/c/f;->a(S)V

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x7

    if-ne p1, v0, :cond_a

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->i:Lcom/nuance/a/a/a/b/c/c/e;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/c/e;->a()V

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    const-string v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/a/a/a/b/c/b/b/s;->b(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->j:Lcom/nuance/a/a/a/b/c/c/f;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/b/c/c/f;->a(S)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public final a([B)V
    .locals 5

    const/4 v2, 0x1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXTransactionImpl.onSessionConnected()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_3

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/nuance/a/a/a/b/c/b/b/s;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->t:Lcom/nuance/a/a/a/b/c/b/b/s$a;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lcom/nuance/a/a/a/b/c/b/b/s$a;->a(Ljava/lang/String;)V

    :cond_2
    iget-boolean v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->s:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->s:Z

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PDXCommandCreated() called from onSessionConnected()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->i:Lcom/nuance/a/a/a/b/c/c/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->i:Lcom/nuance/a/a/a/b/c/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v3, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->a:B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/a/a/a/b/c/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nuance/a/a/a/b/c/b/b/s;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got exp in PDXCommandListener.PDXCommandCreated() ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/b/s;->f()V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/b/s;->f()V

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/b/s;->f()V

    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-interface {v0, v2}, Lcom/nuance/a/a/a/a/b/a/c;->a(Lcom/nuance/a/a/a/a/b/a/f$a;)Z

    :cond_0
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    if-ne v0, v3, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->q:Z

    if-nez v0, :cond_2

    const-string v0, "CommandAbort"

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v2, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v4}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v0, v2, p0, v3, v4}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->m:S

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final f()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/a/b/a/c;->a(Lcom/nuance/a/a/a/a/b/a/f$a;)Z

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->n:Lcom/nuance/a/a/a/a/b/a/c;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->o:Lcom/nuance/a/a/a/a/b/a/f$a;

    iget-wide v2, p0, Lcom/nuance/a/a/a/b/c/b/b/s;->p:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/a/a/a/a/b/a/c;->a(Lcom/nuance/a/a/a/a/b/a/f$a;J)V

    :cond_0
    return-void
.end method
