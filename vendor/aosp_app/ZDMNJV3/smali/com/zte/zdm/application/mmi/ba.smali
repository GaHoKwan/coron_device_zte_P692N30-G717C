.class Lcom/zte/zdm/application/mmi/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/ba;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-static {p2}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Z)Z

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ba;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "backup_click"

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ba;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "backup_click_tmp"

    invoke-static {}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    return-void
.end method
