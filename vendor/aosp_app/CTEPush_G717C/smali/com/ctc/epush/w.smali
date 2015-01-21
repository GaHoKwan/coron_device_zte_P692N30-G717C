.class final Lcom/ctc/epush/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/w;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ctc/epush/w;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->a(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/w;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->f(Lcom/ctc/epush/PushDialogActivity;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "APP_UPDATA"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/ctc/epush/w;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/PushDialogActivity;->finish()V

    :cond_0
    return-void
.end method
