.class Lcom/zte/zdm/application/activities/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/a/j;

.field final synthetic b:Lcom/zte/zdm/application/activities/z;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/z;Lcom/zte/zdm/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/aa;->b:Lcom/zte/zdm/application/activities/z;

    iput-object p2, p0, Lcom/zte/zdm/application/activities/aa;->a:Lcom/zte/zdm/a/j;

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

    iget-object v0, p0, Lcom/zte/zdm/application/activities/aa;->a:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
