.class public Lcom/nuance/a/a/a/b/c/b/b/o;
.super Lcom/nuance/a/a/a/b/c/b/b/g;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/j;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/b/o;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/b/o;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x7205

    invoke-direct {p0, v0, p1}, Lcom/nuance/a/a/a/b/c/b/b/g;-><init>(S[B)V

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/o;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXQueryRetry.getName()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final h()I
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/o;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXQueryRetry.getCause()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "cause"

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/o;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/o;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXQueryRetry.getPrompt()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "prompt"

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/o;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1
.end method
