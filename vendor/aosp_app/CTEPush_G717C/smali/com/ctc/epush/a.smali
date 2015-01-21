.class final Lcom/ctc/epush/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/IndexActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/IndexActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    iget-object v3, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    invoke-static {v3}, Lcom/ctc/epush/IndexActivity;->a(Lcom/ctc/epush/IndexActivity;)Lcom/ctc/c/n;

    move-result-object v3

    const-string v4, "RECEIVE_PUSH"

    new-array v5, v1, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/ctc/epush/IndexActivity;->a(Lcom/ctc/epush/IndexActivity;Z)V

    iget-object v2, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    invoke-static {v2}, Lcom/ctc/epush/IndexActivity;->a(Lcom/ctc/epush/IndexActivity;)Lcom/ctc/c/n;

    move-result-object v2

    const-string v3, "RECEIVE_PUSH"

    iget-object v4, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    invoke-static {v4}, Lcom/ctc/epush/IndexActivity;->b(Lcom/ctc/epush/IndexActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    invoke-static {v0}, Lcom/ctc/epush/IndexActivity;->c(Lcom/ctc/epush/IndexActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    invoke-static {v0}, Lcom/ctc/epush/IndexActivity;->b(Lcom/ctc/epush/IndexActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/IndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ctc/epush/a;->a:Lcom/ctc/epush/IndexActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/IndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
