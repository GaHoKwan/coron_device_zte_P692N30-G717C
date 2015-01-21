.class final Lcom/ctc/epush/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushResultDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushResultDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/ah;->a:Lcom/ctc/epush/PushResultDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/ctc/c/n;

    iget-object v1, p0, Lcom/ctc/epush/ah;->a:Lcom/ctc/epush/PushResultDialogActivity;

    invoke-direct {v0, v1}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    const-string v1, "startindex"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v0, p0, Lcom/ctc/epush/ah;->a:Lcom/ctc/epush/PushResultDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/PushResultDialogActivity;->finish()V

    return-void
.end method
