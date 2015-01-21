.class public final Lcom/nuance/a/a/a/b/b/c$a;
.super Lcom/nuance/a/a/a/a/d/d;


# static fields
.field public static final a:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final b:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final c:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final d:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final e:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final f:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final g:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final h:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final i:Lcom/nuance/a/a/a/b/b/c$a;

.field public static final j:Lcom/nuance/a/a/a/b/b/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->a:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->b:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->c:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->d:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->e:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->f:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->g:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->h:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->i:Lcom/nuance/a/a/a/b/b/c$a;

    new-instance v0, Lcom/nuance/a/a/a/b/b/c$a;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/b/c$a;-><init>(S)V

    sput-object v0, Lcom/nuance/a/a/a/b/b/c$a;->j:Lcom/nuance/a/a/a/b/b/c$a;

    return-void
.end method

.method private constructor <init>(S)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/a/a/a/a/d/d;-><init>(S)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->b:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nmsp"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->c:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "app"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->d:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "nss"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->e:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "slog"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->f:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "nsslog"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->g:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "gwlog"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->h:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "svsp"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->i:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "sip"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->j:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "sdp"

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/nuance/a/a/a/b/b/c$a;->a:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/b/c$a;->a(Lcom/nuance/a/a/a/a/d/d;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "sdk"

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method
