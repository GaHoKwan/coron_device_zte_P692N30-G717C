.class Lcom/zte/zdm/application/mmi/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/UIProjectActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bv;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/bv;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
