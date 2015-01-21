.class Lcom/zte/zdm/application/b/fl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/fj;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/fj;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fl;->a:Lcom/zte/zdm/application/b/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zte/zdm/application/b/fl;->a:Lcom/zte/zdm/application/b/fj;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fj;->c:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
