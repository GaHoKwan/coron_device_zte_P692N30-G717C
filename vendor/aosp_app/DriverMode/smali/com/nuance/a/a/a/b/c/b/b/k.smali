.class public Lcom/nuance/a/a/a/b/c/b/b/k;
.super Lcom/nuance/a/a/a/b/c/b/b/g;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/b/k;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/b/k;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x204

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/g;-><init>(S)V

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/k;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/k;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXQueryEnd()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
