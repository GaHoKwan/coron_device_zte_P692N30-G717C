.class public Lcom/nuance/a/a/a/b/c/b/b/n;
.super Lcom/nuance/a/a/a/b/c/b/b/g;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/i;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field private final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/b/n;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/b/n;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x7201

    invoke-direct {p0, v0, p1}, Lcom/nuance/a/a/a/b/c/b/b/g;-><init>(S[B)V

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/b/n;->b:[B

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "final_response"

    invoke-virtual {p0, v1}, Lcom/nuance/a/a/a/b/c/b/b/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "final_response"

    invoke-virtual {p0, v1}, Lcom/nuance/a/a/a/b/c/b/b/n;->d(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/nuance/a/a/a/b/c/b/b/n;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/a/a/a/b/c/b/b/n;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "final_response does not exist. "

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
