.class public Lcom/zte/zdm/application/d/b/f;
.super Lcom/zte/zdm/g/a/a;


# static fields
.field private static b:Lcom/zte/zdm/g/a/c;


# instance fields
.field private c:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/d/b/f;->b:Lcom/zte/zdm/g/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/g/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    return-void
.end method

.method public static a()Lcom/zte/zdm/g/a/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/d/b/f;->b:Lcom/zte/zdm/g/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/d/b/f;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/b/f;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/d/b/f;->b:Lcom/zte/zdm/g/a/c;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/d/b/f;->b:Lcom/zte/zdm/g/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public a(I)[B
    .locals 6

    const/16 v5, 0x200

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, v5, [B

    :goto_0
    iget-object v2, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    invoke-virtual {v2, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/b/f;->a(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/io/InputStream;I)[B
    .locals 5

    const/4 v4, 0x0

    if-gtz p2, :cond_0

    const/16 p2, 0x200

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, p2, [B

    :goto_0
    invoke-virtual {p1, v1, v4, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/d/b/f;->a(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/d/b/f;->c:Ljava/io/InputStream;

    return-object v0
.end method
