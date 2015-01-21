.class final Lcom/ctc/epush/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/MainActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-static {v0}, Lcom/ctc/epush/MainActivity;->b(Lcom/ctc/epush/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-static {v0}, Lcom/ctc/epush/MainActivity;->c(Lcom/ctc/epush/MainActivity;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "update_push_value"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/MainActivity;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-static {v0}, Lcom/ctc/epush/MainActivity;->d(Lcom/ctc/epush/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-static {v0}, Lcom/ctc/epush/MainActivity;->c(Lcom/ctc/epush/MainActivity;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "update_push_value"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/MainActivity;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-static {v0}, Lcom/ctc/epush/MainActivity;->e(Lcom/ctc/epush/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-static {v0}, Lcom/ctc/epush/MainActivity;->c(Lcom/ctc/epush/MainActivity;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "update_push_value"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/MainActivity;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-static {v0}, Lcom/ctc/epush/MainActivity;->f(Lcom/ctc/epush/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-static {v0}, Lcom/ctc/epush/MainActivity;->c(Lcom/ctc/epush/MainActivity;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "update_push_value"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ctc/epush/j;->a:Lcom/ctc/epush/MainActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/MainActivity;->a()V

    goto :goto_0
.end method
