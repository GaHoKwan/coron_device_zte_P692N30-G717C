.class public Lcom/zte/zdm/b/f/a/a;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AAUTHLEVEL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AAUTHTYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AAUTHNAME"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AAUTHSECRET"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AAUTHDATA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zdm/b/f/a/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/zte/zdm/omacp/d/a;Ljava/lang/String;)Lcom/zte/zdm/b/f/a/e;
    .locals 4

    invoke-interface {p0, p1}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zte/zdm/b/f/a/e;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/zte/zdm/b/f/a/e;-><init>(I)V

    const-string v2, "format"

    const-string v3, "chr"

    invoke-virtual {v0, v2, v3}, Lcom/zte/zdm/b/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Lcom/zte/zdm/b/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/zte/zdm/b/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/zte/zdm/omacp/d/c;)Lcom/zte/zdm/b/f/d;
    .locals 8

    const/4 v2, 0x0

    const-string v0, "APPLICATION"

    const-string v1, "w7"

    invoke-interface {p0, v0, v1}, Lcom/zte/zdm/omacp/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;

    move-result-object v0

    const-string v1, "APPAUTH"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->d(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/b;

    move-result-object v0

    new-instance v3, Lcom/zte/zdm/b/f/a/e;

    invoke-direct {v3, v2}, Lcom/zte/zdm/b/f/a/e;-><init>(I)V

    const-string v1, "name"

    const-string v4, "AppAuth"

    invoke-virtual {v3, v1, v4}, Lcom/zte/zdm/b/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format"

    const-string v4, "node"

    invoke-virtual {v3, v1, v4}, Lcom/zte/zdm/b/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/zte/zdm/omacp/d/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/a;

    sget-object v5, Lcom/zte/zdm/b/f/a/a;->a:[Ljava/lang/String;

    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v5, v1

    invoke-static {v0, v7}, Lcom/zte/zdm/b/f/a/a;->a(Lcom/zte/zdm/omacp/d/a;Ljava/lang/String;)Lcom/zte/zdm/b/f/a/e;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v7}, Lcom/zte/zdm/b/f/a/e;->a(Lcom/zte/zdm/b/f/a/e;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/zte/zdm/b/f/a/e;->d()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "resource/dmacc_1.xml"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/omacp/d/a/g;->a()V

    invoke-static {v0}, Lcom/zte/zdm/omacp/d/a/g;->a(Ljava/io/InputStream;)Lcom/zte/zdm/omacp/d/c;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/f/a/a;->a(Lcom/zte/zdm/omacp/d/c;)Lcom/zte/zdm/b/f/d;

    move-result-object v1

    new-instance v2, Lcom/zte/zdm/b/f/b;

    invoke-direct {v2}, Lcom/zte/zdm/b/f/b;-><init>()V

    invoke-virtual {v2, v1}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-static {v2}, Lcom/zte/zdm/b/f/a/ag;->a(Lcom/zte/zdm/b/f/c;)[B

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "resource/out.xml"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
