.class public Lcom/zte/zdm/b/f/b/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1

.field public static final c:I = 0xc8

.field private static final d:Ljava/lang/String; = "read"

.field private static final e:Ljava/lang/String; = "write"

.field private static final f:Ljava/lang/String; = "exec"

.field private static final g:Lcom/zte/zdm/b/f/b/d;


# instance fields
.field private h:Lcom/zte/zdm/mos/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/b/f/b/d;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/b/d;-><init>()V

    sput-object v0, Lcom/zte/zdm/b/f/b/d;->g:Lcom/zte/zdm/b/f/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/zdm/mos/c;->a()Lcom/zte/zdm/mos/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/f/b/d;->h:Lcom/zte/zdm/mos/c;

    return-void
.end method

.method public static a()Lcom/zte/zdm/b/f/b/d;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/f/b/d;->g:Lcom/zte/zdm/b/f/b/d;

    return-object v0
.end method

.method private a(Lcom/zte/zdm/b/f/d/f;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/b/d;->b(Lcom/zte/zdm/b/f/d/f;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/g;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/b/d;->h:Lcom/zte/zdm/mos/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/mos/c;->a(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "require tree register method read handler failed, check the uri whether registered [read]"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/zte/zdm/b/f/d/f;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/h;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/b/d;->h:Lcom/zte/zdm/mos/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/mos/c;->b(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "require tree register method write handler failed, check the uri whether registered [write]"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/b/d;->h:Lcom/zte/zdm/mos/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/mos/c;->c(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "require tree register method exec handler failed, check the uri whether registered [exec]"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 2

    const-string v0, "onExecAction"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/b/d;->d(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/zte/zdm/b/f/b/a;->a(Ljava/lang/String;[BLjava/lang/String;)I
    :try_end_0
    .catch Lcom/zte/zdm/b/f/b/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "onReadAction:NodeIoException"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "onWriteAction"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/b/d;->c(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p2

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/zte/zdm/b/f/b/h;->a(Ljava/lang/String;I[BI)I
    :try_end_0
    .catch Lcom/zte/zdm/b/f/b/e; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "onWriteAction:NodeIoException"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/zte/zdm/b/f/b/e;

    const/16 v1, 0x1f4

    const-string v2, "onWriteAction:NodeIoException"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/zte/zdm/b/f/d/e;)Z
    .locals 1

    const-string v0, "read"

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/b/f/b/d;->a(Lcom/zte/zdm/b/f/d/f;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/zte/zdm/b/f/d/f;)Z
    .locals 1

    const-string v0, "exec"

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/b/f/b/d;->a(Lcom/zte/zdm/b/f/d/f;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "onReadAction"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/b/d;->b(Ljava/lang/String;)Lcom/zte/zdm/b/f/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/b/g;->a(Ljava/lang/String;I[B)I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/zte/zdm/b/f/b/g;->a(Ljava/lang/String;I[B)I
    :try_end_0
    .catch Lcom/zte/zdm/b/f/b/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "onReadAction:NodeIoException"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/zte/zdm/b/f/b/e;

    const/16 v1, 0x1f4

    const-string v2, "onReadAction:NodeIoException"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/zte/zdm/b/f/d/e;)Z
    .locals 1

    const-string v0, "write"

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/b/f/b/d;->a(Lcom/zte/zdm/b/f/d/f;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
