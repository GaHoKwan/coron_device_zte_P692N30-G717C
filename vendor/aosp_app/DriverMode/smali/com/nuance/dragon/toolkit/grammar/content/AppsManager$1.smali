.class final Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$1;->a:Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$1;->a:Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;->onContentUpdate()V

    return-void
.end method
