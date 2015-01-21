.class public Lcom/zte/zdm/application/d/f/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/zte/zdm/application/d/f/b;

    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v2}, Lcom/zte/zdm/application/d/f/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/zte/zdm/application/d/f/b;

    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/zte/zdm/application/d/f/d;->h:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zte/zdm/application/d/f/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/zte/zdm/application/d/f/d;->h:Landroid/content/Context;

    sput-object p1, Lcom/zte/zdm/application/d/f/d;->f:Ljava/lang/String;

    invoke-static {}, Lcom/zte/zdm/application/d/f/b;->b()V

    return-void
.end method

.method private static b()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/d/f/c;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/f/c;-><init>()V

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/f/c;->start()V

    return-void
.end method
