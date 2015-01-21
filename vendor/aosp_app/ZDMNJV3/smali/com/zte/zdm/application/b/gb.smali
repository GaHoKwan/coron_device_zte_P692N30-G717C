.class public Lcom/zte/zdm/application/b/gb;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/zte/zdm/application/b/gb;


# instance fields
.field a:Lcom/zte/zdm/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/b/gb;

    invoke-direct {v0}, Lcom/zte/zdm/application/b/gb;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/b/gb;->b:Lcom/zte/zdm/application/b/gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/b/gb;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/gb;->b:Lcom/zte/zdm/application/b/gb;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/zte/zdm/a/a;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/a/d;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "lancherActivity is SystemUpdateActivity"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/b/s;

    invoke-direct {v0, p1, p2, v2}, Lcom/zte/zdm/application/b/s;-><init>(Landroid/content/Context;Lcom/zte/zdm/a/a;Lcom/zte/zdm/a/j;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/gb;->a:Lcom/zte/zdm/a/d;

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/gb;->a:Lcom/zte/zdm/a/d;

    return-object v0

    :cond_0
    const-class v1, Lcom/zte/zdm/application/mmi/MainActivity;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lancherActivity is MainActivity"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/b/dd;

    invoke-direct {v0, p1, p2, v2}, Lcom/zte/zdm/application/b/dd;-><init>(Landroid/content/Context;Lcom/zte/zdm/a/a;Lcom/zte/zdm/a/j;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/gb;->a:Lcom/zte/zdm/a/d;

    goto :goto_0

    :cond_1
    const-string v0, "unknown LancherActivity,use default controller"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/b/s;

    invoke-direct {v0, p1, p2, v2}, Lcom/zte/zdm/application/b/s;-><init>(Landroid/content/Context;Lcom/zte/zdm/a/a;Lcom/zte/zdm/a/j;)V

    iput-object v0, p0, Lcom/zte/zdm/application/b/gb;->a:Lcom/zte/zdm/a/d;

    goto :goto_0
.end method
