.class Lcom/zte/zdm/omacp/d/a/j;
.super Ljava/util/Hashtable;


# static fields
.field private static final b:Ljava/lang/String; = "other"


# instance fields
.field final synthetic a:Lcom/zte/zdm/omacp/d/a/h;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/omacp/d/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/omacp/d/a/j;->a:Lcom/zte/zdm/omacp/d/a/h;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/omacp/d/a/h;Lcom/zte/zdm/omacp/d/a/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/d/a/j;-><init>(Lcom/zte/zdm/omacp/d/a/h;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "other"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/d/a/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/omacp/d/a;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "other"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/d/a/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/omacp/d/a/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
