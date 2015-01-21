.class public final Lcom/nuance/a/a/a/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/a/a/a/a/b/a/b$a;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/a/a/a/c/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/a/a/a/c/b;->b:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/nuance/a/a/a/c/b;->c:Z

    if-eqz p1, :cond_3

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/c;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v3

    sget-object v4, Lcom/nuance/a/a/a/b/b/c$a;->a:Lcom/nuance/a/a/a/b/b/c$a;

    if-ne v3, v4, :cond_0

    const-string v3, "Android_Context"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/nuance/a/a/a/c/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/a/a/a/c/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NMSP_DEFINES_ANDROID_CONTEXT is passed in as"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/a/a/a/c/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v3, "Disable_Bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/a/a/a/c/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "Disable_Bluetooth is true."

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/a/a/a/c/b;->c:Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/a/a/a/c/b;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/c/b;->b:Landroid/content/Context;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/a/a/a/c/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/a/a/a/c/b;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "ANDROID_CONTEXT parameter is not passed in!!!"

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/a/a/a/c/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/b;->a(Landroid/content/Context;)Lcom/nuance/a/a/a/c/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/a/a/a/c/a/b;->a()Z

    move-result v0

    invoke-virtual {v1}, Lcom/nuance/a/a/a/c/a/b;->b()V

    goto :goto_0
.end method
