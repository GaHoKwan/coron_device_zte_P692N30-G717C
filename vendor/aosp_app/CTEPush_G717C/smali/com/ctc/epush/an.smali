.class final Lcom/ctc/epush/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/UserDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/UserDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/an;->a:Lcom/ctc/epush/UserDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/epush/an;->a:Lcom/ctc/epush/UserDialogActivity;

    const-class v2, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ctc/epush/an;->a:Lcom/ctc/epush/UserDialogActivity;

    invoke-virtual {v1, v0}, Lcom/ctc/epush/UserDialogActivity;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/ctc/epush/an;->a:Lcom/ctc/epush/UserDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/UserDialogActivity;->finish()V

    iget-object v0, p0, Lcom/ctc/epush/an;->a:Lcom/ctc/epush/UserDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/UserDialogActivity;->finish()V

    return-void
.end method
