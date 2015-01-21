.class final Lcom/ctc/epush/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/IndexActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/IndexActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/e;->a:Lcom/ctc/epush/IndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/epush/e;->a:Lcom/ctc/epush/IndexActivity;

    const-class v2, Lcom/ctc/epush/PushRecordDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ctc/epush/e;->a:Lcom/ctc/epush/IndexActivity;

    invoke-virtual {v1, v0}, Lcom/ctc/epush/IndexActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
