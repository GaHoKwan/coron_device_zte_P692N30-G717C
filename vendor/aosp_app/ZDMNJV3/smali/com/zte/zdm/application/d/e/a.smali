.class public Lcom/zte/zdm/application/d/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/g/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/g/d/b;
    .locals 2

    new-instance v0, Lcom/zte/zdm/application/d/a/a;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/application/d/a/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
