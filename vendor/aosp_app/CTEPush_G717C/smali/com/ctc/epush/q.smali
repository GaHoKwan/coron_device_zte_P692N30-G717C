.class final Lcom/ctc/epush/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/q;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ctc/epush/q;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_0
    if-lt v2, v4, :cond_0

    if-ne v1, v4, :cond_1

    iget-object v0, p0, Lcom/ctc/epush/q;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->b(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ctc/epush/q;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    iget-object v5, p0, Lcom/ctc/epush/q;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ctc/epush/PushDialogActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ctc/epush/q;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->b(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
