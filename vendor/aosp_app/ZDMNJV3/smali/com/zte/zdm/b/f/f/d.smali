.class public Lcom/zte/zdm/b/f/f/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/zte/zdm/b/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/b/f/f/d;->a:Lcom/zte/zdm/b/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/b/f/f/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/f/f/d;->a:Lcom/zte/zdm/b/b/a;

    if-nez v0, :cond_0

    const-string v0, "/data/data/com.zte.zdm/files/tree.xml"

    :goto_0
    invoke-static {v0}, Lcom/zte/zdm/b/f/f/d;->a(Ljava/lang/String;)Lcom/zte/zdm/b/f/f/c;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/b/f/f/d;->a:Lcom/zte/zdm/b/b/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/b/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/zte/zdm/b/f/f/c;
    .locals 1

    new-instance v0, Lcom/zte/zdm/b/f/f/e;

    invoke-direct {v0, p0}, Lcom/zte/zdm/b/f/f/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/zte/zdm/b/b/a;)V
    .locals 0

    sput-object p0, Lcom/zte/zdm/b/f/f/d;->a:Lcom/zte/zdm/b/b/a;

    return-void
.end method
