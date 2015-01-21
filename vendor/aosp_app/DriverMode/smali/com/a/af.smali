.class final Lcom/a/af;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/a/ae;

.field private b:Lcom/a/ad;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/a/ae;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/a/af;->a:Lcom/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/a/af;->b:Lcom/a/ad;

    iput-object v0, p0, Lcom/a/af;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/ad;
    .locals 1

    iget-object v0, p0, Lcom/a/af;->b:Lcom/a/ad;

    return-object v0
.end method

.method public final a(Lcom/a/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/a/af;->b:Lcom/a/ad;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "##"

    const-string v1, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/af;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/af;->c:Ljava/lang/String;

    return-object v0
.end method
