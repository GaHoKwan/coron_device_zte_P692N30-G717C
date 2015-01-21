.class Lcom/zte/zdm/application/b/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/bw;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "dm_wifi_open action on click"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zte/zdm/application/b/bw;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->b(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/a/j;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
