.class Lcom/zte/zdm/application/mmi/bt;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/UIProjectActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bt;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bt;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-static {v0, p1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Lcom/zte/zdm/application/mmi/UIProjectActivity;Landroid/os/Message;)V

    return-void
.end method
