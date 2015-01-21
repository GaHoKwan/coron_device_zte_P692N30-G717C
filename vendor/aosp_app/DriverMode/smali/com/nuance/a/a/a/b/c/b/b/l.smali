.class public Lcom/nuance/a/a/a/b/c/b/b/l;
.super Lcom/nuance/a/a/a/b/c/b/b/g;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/h;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/b/l;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/b/l;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x7202

    invoke-direct {p0, v0, p1}, Lcom/nuance/a/a/a/b/c/b/b/g;-><init>(S[B)V

    return-void
.end method


# virtual methods
.method public final g()I
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/l;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXQueryError.getError()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/l;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/l;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXQueryError.getDescription()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/l;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
