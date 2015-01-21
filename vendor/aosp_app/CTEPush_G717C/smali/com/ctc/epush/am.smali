.class final Lcom/ctc/epush/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/UserDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/UserDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/am;->a:Lcom/ctc/epush/UserDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/am;->a:Lcom/ctc/epush/UserDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/UserDialogActivity;->finish()V

    iget-object v0, p0, Lcom/ctc/epush/am;->a:Lcom/ctc/epush/UserDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/UserDialogActivity;->finish()V

    return-void
.end method
