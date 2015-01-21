.class public Lcom/zte/zdm/omacp/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1

.field public static final c:I = -0x2

.field public static final d:I = -0x3

.field public static final e:I = -0x4

.field public static final f:Ljava/lang/String; = "<?xml "

.field private static final g:Ljava/lang/String; = "OmaCp"

.field private static i:Lcom/zte/zdm/omacp/a;


# instance fields
.field private h:Lcom/zte/zdm/omacp/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/omacp/a;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/a;-><init>()V

    sput-object v0, Lcom/zte/zdm/omacp/a;->i:Lcom/zte/zdm/omacp/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/omacp/a;
    .locals 1

    sget-object v0, Lcom/zte/zdm/omacp/a;->i:Lcom/zte/zdm/omacp/a;

    return-object v0
.end method

.method private b(Lcom/zte/zdm/omacp/c;)V
    .locals 4

    const-string v0, "OmaCp"

    const-string v1, "ask for setup"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/omacp/a;->h:Lcom/zte/zdm/omacp/b;

    invoke-interface {v0}, Lcom/zte/zdm/omacp/b;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "OmaCp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ask for setup error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "OmaCp"

    const-string v1, "securityVerify"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/a;->a(Lcom/zte/zdm/omacp/c;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "OmaCp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ask for setup error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/omacp/a;->h:Lcom/zte/zdm/omacp/b;

    invoke-interface {v1, v0}, Lcom/zte/zdm/omacp/b;->a(I)V

    goto :goto_0

    :cond_1
    const-string v0, "OmaCp"

    const-string v1, "install config"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/zdm/omacp/c;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/a;->b([B)I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/a;->h:Lcom/zte/zdm/omacp/b;

    invoke-interface {v1, v0}, Lcom/zte/zdm/omacp/b;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/zte/zdm/omacp/c;)I
    .locals 1

    invoke-virtual {p1}, Lcom/zte/zdm/omacp/c;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Lcom/zte/zdm/omacp/c/c;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/c/c;-><init>()V

    :goto_1
    invoke-static {v0}, Lcom/zte/zdm/g/a;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/zte/zdm/omacp/c/b;->a(Lcom/zte/zdm/omacp/c;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/zte/zdm/omacp/c/a;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/c/a;-><init>()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a([B)Lcom/zte/zdm/omacp/c;
    .locals 3

    new-instance v0, Lcom/zte/zdm/omacp/c;

    invoke-direct {v0, p1}, Lcom/zte/zdm/omacp/c;-><init>([B)V

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/c;->b()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/zte/zdm/omacp/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/omacp/a;->h:Lcom/zte/zdm/omacp/b;

    invoke-static {p1}, Lcom/zte/zdm/omacp/c/b;->a(Lcom/zte/zdm/omacp/b;)V

    return-void
.end method

.method public b([B)I
    .locals 4

    const/4 v1, 0x0

    const/4 v2, -0x4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string v3, "<?xml "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/zte/zdm/omacp/b/a;->a()Lcom/zte/zdm/omacp/b/a;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/zte/zdm/omacp/b/a;->a([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_1
.end method
