.class public Lcom/nuance/a/a/a/b/c/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/c$b;
.implements Lcom/nuance/a/a/a/b/c/a/d;
.implements Lcom/nuance/a/a/a/b/c/b/a/c;


# static fields
.field private static final l:Lcom/nuance/a/a/a/a/b/a/b$a;

.field private static p:J


# instance fields
.field protected a:Lcom/nuance/a/a/a/b/c/b/a/b;

.field protected b:Lcom/nuance/a/a/a/a/a/a$a;

.field protected c:Lcom/nuance/a/a/a/a/a/a$a;

.field public d:Ljava/util/Vector;

.field protected e:Lcom/nuance/a/a/a/a/b/a/c;

.field protected f:Lcom/nuance/a/a/a/b/c/a/a;

.field protected g:I

.field protected h:Ljava/lang/Object;

.field protected i:Ljava/util/Hashtable;

.field protected j:B

.field protected k:J

.field private m:Lcom/nuance/a/a/a/b/c/a/f;

.field private n:Lcom/nuance/a/a/a/b/c/b/a/c;

.field private o:B

.field private q:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/nuance/a/a/a/b/c/b/a/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/nuance/a/a/a/b/c/b/a/d;->p:J

    return-void
.end method

.method public constructor <init>(Lcom/nuance/a/a/a/b/c/b/a/a;Lcom/nuance/a/a/a/b/c/a/f;Ljava/util/Vector;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    iput-byte v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->j:B

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->f:Lcom/nuance/a/a/a/b/c/a/a;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/a/a;->g()Lcom/nuance/a/a/a/b/c/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    iput-object p2, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/a/a;->e()Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->b:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/a/a;->f()Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->c:Lcom/nuance/a/a/a/a/a/a$a;

    const/4 v1, 0x5

    iput-byte v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->o:B

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/a/a;->a()Lcom/nuance/a/a/a/a/b/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->e:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->h:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/c/b/a/b;->h()B

    move-result v1

    iput-byte v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->j:B

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->q:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/c/b/a/b;->g()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->k:J

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->d:Ljava/util/Vector;

    if-eqz p3, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/c;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->e()Lcom/nuance/a/a/a/b/b/c;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->d:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/b/c$a;
    .locals 1

    const-string v0, "sdk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->a:Lcom/nuance/a/a/a/b/b/c$a;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nmsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->b:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_1
    const-string v0, "app"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->c:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_2
    const-string v0, "nss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->d:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_3
    const-string v0, "slog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->e:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_4
    const-string v0, "nsslog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->f:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_5
    const-string v0, "gwlog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->g:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_6
    const-string v0, "svsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->h:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_7
    const-string v0, "sip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->i:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_8
    const-string v0, "sdp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->j:Lcom/nuance/a/a/a/b/b/c$a;

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Vector;J)V
    .locals 10

    const/4 v3, 0x2

    const/4 v9, 0x0

    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    :cond_0
    new-array v4, v9, [B

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->q:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<gp><rid>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</rid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v9

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/c;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v3

    sget-object v5, Lcom/nuance/a/a/a/b/b/c$a;->c:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v3, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v3

    sget-object v5, Lcom/nuance/a/a/a/b/b/c$a;->b:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v3, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v3

    sget-object v5, Lcom/nuance/a/a/a/b/b/c$a;->d:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v3, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v3

    sget-object v5, Lcom/nuance/a/a/a/b/b/c$a;->h:Lcom/nuance/a/a/a/b/b/c$a;

    if-ne v3, v5, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " p=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</gp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/16 v1, 0xa17

    const-string v2, "SEND_BCP_GET_PARAMS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-byte v5, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->j:B

    iget-object v8, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->n:Lcom/nuance/a/a/a/b/c/b/a/c;

    move-wide v6, p2

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V

    return-void
.end method

.method public static i()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 6

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "freeResource, disconnect timeout: 0"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->e:Lcom/nuance/a/a/a/a/b/a/c;

    new-instance v3, Lcom/nuance/a/a/a/a/b/a/c$a;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lcom/nuance/a/a/a/a/b/a/c$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->e:Lcom/nuance/a/a/a/a/b/a/c;

    invoke-interface {v4}, Lcom/nuance/a/a/a/a/b/a/c;->a()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v2, v3, p0, v0, v4}, Lcom/nuance/a/a/a/a/b/a/c;->a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_0
    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "ResourceException the resource was unloaded. "

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

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

.method public final a(BJSSS)V
    .locals 3

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBcpResponse, TID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , request state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", completion cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    const/16 v0, 0xc8

    if-eq p4, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(BJS[B)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, -0x1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBcpSetParamsComplete, TID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBcpSetParamsComplete, RID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already removed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-eqz p5, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p5}, Ljava/lang/String;-><init>([B)V

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    const-string v4, ";"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_1

    new-instance v6, Lcom/nuance/a/a/a/b/b/c;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/a/a/a/b/c/b/a/d;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/nuance/a/a/a/b/b/c;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/b/c$a;)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_3

    new-instance v4, Lcom/nuance/a/a/a/b/b/c;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/a/a/a/b/c/b/a/d;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/nuance/a/a/a/b/b/c;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/b/c$a;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    const/16 v0, 0xc8

    if-eq p4, v0, :cond_4

    const/16 v0, 0xc9

    if-ne p4, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public a(BS)V
    .locals 3

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBcpEvent, TID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v0, p0}, Lcom/nuance/a/a/a/b/c/b/a/b;->b(Lcom/nuance/a/a/a/b/c/b/a/c;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(B[B)V
    .locals 0

    return-void
.end method

.method protected final a(Lcom/nuance/a/a/a/b/c/b/a/c;)V
    .locals 10

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "loadResource"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/a/a/a/c/b;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->d:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/c/b;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/a/a/a/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->b:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/d/e;->c(Lcom/nuance/a/a/a/a/a/a$a;)Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->b:Lcom/nuance/a/a/a/a/a/a$a;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->c:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/d/e;->c(Lcom/nuance/a/a/a/a/a/a$a;)Lcom/nuance/a/a/a/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->c:Lcom/nuance/a/a/a/a/a/a$a;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->f:Lcom/nuance/a/a/a/b/c/a/a;

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/a;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->b:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/b/c/b/a/a;->a(Lcom/nuance/a/a/a/a/a/a$a;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->f:Lcom/nuance/a/a/a/b/c/a/a;

    check-cast v0, Lcom/nuance/a/a/a/b/c/b/a/a;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->c:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/b/c/b/a/a;->b(Lcom/nuance/a/a/a/a/a/a$a;)V

    :cond_0
    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->n:Lcom/nuance/a/a/a/b/c/b/a/c;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v0, p1}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(Lcom/nuance/a/a/a/b/c/b/a/c;)V

    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->f()[B

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/a/d;->h()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<lr><rid>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</rid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-byte v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->o:B

    packed-switch v1, :pswitch_data_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</lr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/16 v1, 0xa27

    const-string v2, "SEND_BCP_LOAD_RESOURCE"

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->j:B

    const/4 v9, 0x0

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V

    :cond_1
    :pswitch_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->b:Lcom/nuance/a/a/a/a/a/a$a;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->c:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(Lcom/nuance/a/a/a/a/a/a$a;Lcom/nuance/a/a/a/a/a/a$a;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<nr9><reco/></nr9>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<nr9><tts/></nr9>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<oper></oper>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<dict>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</dict>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    check-cast p1, Lcom/nuance/a/a/a/a/b/a/c$a;

    iget-byte v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->a:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Vector;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x4

    new-array v8, v0, [B

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    new-instance v4, Ljava/lang/Byte;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<sp><rid>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</rid>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v4, v3

    move-object v3, v2

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/c;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v5

    sget-object v11, Lcom/nuance/a/a/a/b/b/c$a;->c:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v5, v11, :cond_1

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v5

    sget-object v11, Lcom/nuance/a/a/a/b/b/c$a;->b:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v5, v11, :cond_1

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v5

    sget-object v11, Lcom/nuance/a/a/a/b/b/c$a;->d:Lcom/nuance/a/a/a/b/b/c$a;

    if-ne v5, v11, :cond_2

    :cond_1
    const/4 v9, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/String;-><init>([B)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "<"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " p=\""

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" v=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/nuance/a/a/a/a/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v5

    sget-object v11, Lcom/nuance/a/a/a/b/b/c$a;->h:Lcom/nuance/a/a/a/b/b/c$a;

    if-ne v5, v11, :cond_3

    const/4 v9, 0x0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/a/a/a/b/b/c$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " p=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" v=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v0

    array-length v4, v0

    const/4 v11, 0x0

    invoke-static {v4, v8, v11}, Lcom/nuance/a/a/a/a/d/b;->a(I[BI)V

    const/4 v4, 0x0

    const/4 v11, 0x4

    invoke-virtual {v10, v8, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v4, 0x0

    array-length v11, v0

    invoke-virtual {v10, v0, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v4, v5

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</sp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/16 v1, 0xa15

    const-string v2, "SEND_BCP_SET_PARAMS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-byte v5, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->j:B

    iget-object v8, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->n:Lcom/nuance/a/a/a/b/c/b/a/c;

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V

    :try_start_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Vector;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/a/a/a/b/c/b/a/d;->a(Ljava/util/Vector;J)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    iget-byte v2, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->j:B

    iget-object v3, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->n:Lcom/nuance/a/a/a/b/c/b/a/c;

    invoke-virtual {v1, v2, v0, v3}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(BILcom/nuance/a/a/a/b/c/b/a/c;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/nuance/a/a/a/a/b/a/c$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/a/a/a/b/c/b/a/d;->h()J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<fr><rid>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</rid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<n>1</n>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<resids>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<res1><id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<timeout>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<timeout></res1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</resids>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</fr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->a:Lcom/nuance/a/a/a/b/c/b/a/b;

    const/16 v1, 0xa30

    const-string v2, "SEND_BCP_FREE_RESOURCE_ID"

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->j:B

    iget-object v8, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->n:Lcom/nuance/a/a/a/b/c/b/a/c;

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/a/a/a/b/c/b/a/b;->a(SLjava/lang/String;[B[BBJLcom/nuance/a/a/a/b/c/b/a/c;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(S)V
    .locals 3

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionDisconnected, reason code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a([B)V
    .locals 3

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionConnected, SID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->g:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    return-void
.end method

.method public final b(BJS[B)V
    .locals 10

    const/4 v1, 0x0

    const/4 v8, -0x1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBcpGetParamsComplete, TID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->i:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBcpGetParamsComplete, RID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already removed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->q:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->q:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/a/d;->l:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find the grammars associated with RID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    const-string v2, ";"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move v9, v1

    move v1, v2

    move v2, v9

    :goto_1
    const-string v3, ";"

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_3

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/a/a/a/b/b/c;

    new-instance v6, Lcom/nuance/a/a/a/b/b/c;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v1

    invoke-direct {v6, v7, v5, v1}, Lcom/nuance/a/a/a/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/a/a/a/b/b/c$a;)V

    invoke-virtual {v0, v6, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/a/a/a/b/b/c;

    new-instance v4, Lcom/nuance/a/a/a/b/b/c;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v1

    invoke-direct {v4, v5, v3, v1}, Lcom/nuance/a/a/a/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/a/a/a/b/b/c$a;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_4
    const/16 v0, 0xc8

    if-eq p4, v0, :cond_5

    const/16 v0, 0xc9

    if-ne p4, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->m:Lcom/nuance/a/a/a/b/c/a/f;

    goto/16 :goto_0

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final g()Lcom/nuance/a/a/a/b/c/a/a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/a/d;->f:Lcom/nuance/a/a/a/b/c/a/a;

    return-object v0
.end method

.method protected declared-synchronized h()J
    .locals 6

    const-wide/16 v2, 0x1

    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/nuance/a/a/a/b/c/b/a/d;->p:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/nuance/a/a/a/b/c/b/a/d;->p:J

    sget-wide v2, Lcom/nuance/a/a/a/b/c/b/a/d;->p:J

    const-wide/high16 v4, -0x8000

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1

    sput-wide v2, Lcom/nuance/a/a/a/b/c/b/a/d;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
