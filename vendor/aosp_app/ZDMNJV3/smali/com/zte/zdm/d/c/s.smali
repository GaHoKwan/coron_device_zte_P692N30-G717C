.class public final Lcom/zte/zdm/d/c/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/g;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authentication cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/g;
    .locals 1

    new-instance v0, Lcom/zte/zdm/d/c/g;

    invoke-direct {v0, p1, p0}, Lcom/zte/zdm/d/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Lcom/zte/zdm/d/c/s;
    .locals 3

    const-string v0, "guest:guest"

    new-instance v1, Lcom/zte/zdm/d/c/s;

    const-string v2, "syncml:auth-clear"

    invoke-static {v0, v2}, Lcom/zte/zdm/d/c/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/g;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/s;-><init>(Lcom/zte/zdm/d/c/g;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/g;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/g;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/zte/zdm/d/c/g;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/s;->a:Lcom/zte/zdm/d/c/g;

    return-object v0
.end method
