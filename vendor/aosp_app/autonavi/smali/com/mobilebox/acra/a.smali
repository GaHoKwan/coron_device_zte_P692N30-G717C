.class Lcom/mobilebox/acra/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/os/Bundle;

.field private synthetic b:Lcom/mobilebox/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lcom/mobilebox/acra/CrashReportDialog;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/mobilebox/acra/a;->b:Lcom/mobilebox/acra/CrashReportDialog;

    iput-object p2, p0, Lcom/mobilebox/acra/a;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/mobilebox/acra/c;->a()Lcom/mobilebox/acra/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mobilebox/acra/a;->b:Lcom/mobilebox/acra/CrashReportDialog;

    invoke-static {v1}, Lcom/mobilebox/acra/CrashReportDialog;->a(Lcom/mobilebox/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "user.comment"

    iget-object v2, p0, Lcom/mobilebox/acra/a;->b:Lcom/mobilebox/acra/CrashReportDialog;

    invoke-static {v2}, Lcom/mobilebox/acra/CrashReportDialog;->a(Lcom/mobilebox/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mobilebox/acra/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/mobilebox/acra/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/mobilebox/acra/f;-><init>(Lcom/mobilebox/acra/c;)V

    iget-object v0, p0, Lcom/mobilebox/acra/a;->b:Lcom/mobilebox/acra/CrashReportDialog;

    iget-object v0, v0, Lcom/mobilebox/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mobilebox/acra/f;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobilebox/acra/f;->start()V

    iget-object v0, p0, Lcom/mobilebox/acra/a;->a:Landroid/os/Bundle;

    const-string v1, "RES_DIALOG_OK_TOAST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mobilebox/acra/a;->b:Lcom/mobilebox/acra/CrashReportDialog;

    invoke-virtual {v1}, Lcom/mobilebox/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/mobilebox/acra/a;->b:Lcom/mobilebox/acra/CrashReportDialog;

    invoke-virtual {v0}, Lcom/mobilebox/acra/CrashReportDialog;->finish()V

    return-void
.end method
