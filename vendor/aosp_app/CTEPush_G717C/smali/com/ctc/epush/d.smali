.class final Lcom/ctc/epush/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/IndexActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/IndexActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/d;->a:Lcom/ctc/epush/IndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/epush/d;->a:Lcom/ctc/epush/IndexActivity;

    const-class v2, Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/epush/d;->a:Lcom/ctc/epush/IndexActivity;

    invoke-virtual {v1, v0}, Lcom/ctc/epush/IndexActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
