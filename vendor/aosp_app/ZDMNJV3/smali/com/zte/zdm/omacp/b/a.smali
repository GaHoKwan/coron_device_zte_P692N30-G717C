.class public Lcom/zte/zdm/omacp/b/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/zte/zdm/omacp/b/a; = null

.field private static final c:Ljava/lang/String; = "AppConfig"


# instance fields
.field private a:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/omacp/b/a;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public static a()Lcom/zte/zdm/omacp/b/a;
    .locals 1

    sget-object v0, Lcom/zte/zdm/omacp/b/a;->b:Lcom/zte/zdm/omacp/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/omacp/b/a;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/b/a;-><init>()V

    sput-object v0, Lcom/zte/zdm/omacp/b/a;->b:Lcom/zte/zdm/omacp/b/a;

    :cond_0
    sget-object v0, Lcom/zte/zdm/omacp/b/a;->b:Lcom/zte/zdm/omacp/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/b/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a([BZ)V
    .locals 6

    const-string v0, "AppConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfig isWbxml = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/zte/zdm/omacp/d/a/g;->b()V

    :goto_0
    invoke-static {p1}, Lcom/zte/zdm/omacp/d/a/g;->a([B)Lcom/zte/zdm/omacp/d/c;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/a;->c(Ljava/lang/Object;)V

    const-string v0, "APPLICATION"

    invoke-interface {v2, v0}, Lcom/zte/zdm/omacp/d/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zdm/g/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/zdm/omacp/b/a;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/zte/zdm/g/a;->a(Ljava/util/Map;)V

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/zte/zdm/omacp/b/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/zte/zdm/g/a;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/b/b;

    invoke-interface {v0, v2}, Lcom/zte/zdm/omacp/b/b;->a(Lcom/zte/zdm/omacp/d/c;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/zte/zdm/omacp/d/a/g;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
