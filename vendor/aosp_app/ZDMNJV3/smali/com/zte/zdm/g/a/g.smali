.class public Lcom/zte/zdm/g/a/g;
.super Lcom/zte/zdm/g/a/a;


# static fields
.field private static b:Lcom/zte/zdm/g/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/g/a/g;->b:Lcom/zte/zdm/g/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/g/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/g/a/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/g/a/g;->b:Lcom/zte/zdm/g/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/g/a/g;

    invoke-direct {v0}, Lcom/zte/zdm/g/a/g;-><init>()V

    sput-object v0, Lcom/zte/zdm/g/a/g;->b:Lcom/zte/zdm/g/a/c;

    :cond_0
    sget-object v0, Lcom/zte/zdm/g/a/g;->b:Lcom/zte/zdm/g/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/io/InputStream;I)[B
    .locals 4

    const/16 v0, 0x200

    if-gtz p2, :cond_0

    move p2, v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
