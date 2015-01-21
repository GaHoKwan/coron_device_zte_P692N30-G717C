.class final Lcom/ctc/epush/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v2}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->f(Lcom/ctc/epush/PushDialogActivity;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "updateAppNum"

    iget-object v2, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v2}, Lcom/ctc/epush/PushDialogActivity;->i(Lcom/ctc/epush/PushDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v1, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    iget-object v2, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v2}, Lcom/ctc/epush/PushDialogActivity;->i(Lcom/ctc/epush/PushDialogActivity;)Ljava/lang/String;

    invoke-static {v1}, Lcom/ctc/epush/PushDialogActivity;->j(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;Landroid/app/Notification;)V

    iget-object v0, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->k(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v2}, Lcom/ctc/epush/PushDialogActivity;->n(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/ctc/epush/v;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/PushDialogActivity;->finish()V

    goto :goto_0
.end method
