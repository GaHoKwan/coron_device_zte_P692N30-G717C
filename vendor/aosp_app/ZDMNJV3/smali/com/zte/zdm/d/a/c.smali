.class public Lcom/zte/zdm/d/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/zte/zdm/d/a/c;


# instance fields
.field private b:Lcom/zte/zdm/d/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/a/c;->b:Lcom/zte/zdm/d/a/b;

    return-void
.end method

.method protected constructor <init>(Lcom/zte/zdm/d/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/a/c;->b:Lcom/zte/zdm/d/a/b;

    iput-object p1, p0, Lcom/zte/zdm/d/a/c;->b:Lcom/zte/zdm/d/a/b;

    return-void
.end method

.method public static a()Lcom/zte/zdm/d/a/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    if-nez v0, :cond_0

    const-string v0, "Creating new connection manager"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/a/c;

    invoke-direct {v0}, Lcom/zte/zdm/d/a/c;-><init>()V

    sput-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    sget-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/d/a/b;)Lcom/zte/zdm/d/a/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    if-nez v0, :cond_0

    const-string v0, "Creating new connection manager with connectionListener!"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/a/c;

    invoke-direct {v0, p0}, Lcom/zte/zdm/d/a/c;-><init>(Lcom/zte/zdm/d/a/b;)V

    sput-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    sget-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/d/a/c;->a:Lcom/zte/zdm/d/a/c;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)Lcom/zte/zdm/d/a/f;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "Creating new http connection agent error ,the url is null"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/zte/zdm/d/a/f;

    invoke-direct {v0, p1, p2}, Lcom/zte/zdm/d/a/f;-><init>(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zte/zdm/d/a/f;

    invoke-direct {v0, p1}, Lcom/zte/zdm/d/a/f;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Lcom/zte/zdm/d/a/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/c;->b:Lcom/zte/zdm/d/a/b;

    return-object v0
.end method

.method public b(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)Lcom/zte/zdm/d/a/e;
    .locals 1

    new-instance v0, Lcom/zte/zdm/d/a/e;

    invoke-direct {v0}, Lcom/zte/zdm/d/a/e;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/d/a/e;->a(Ljava/lang/String;Lcom/zte/zdm/d/a/i;)V

    return-object v0
.end method

.method public b(Lcom/zte/zdm/d/a/b;)V
    .locals 1

    const-string v0, "set connection listener!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/zdm/d/a/c;->b:Lcom/zte/zdm/d/a/b;

    return-void
.end method
