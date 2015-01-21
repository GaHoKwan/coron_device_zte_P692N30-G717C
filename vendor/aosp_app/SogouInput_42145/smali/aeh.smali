.class Laeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laeg;


# direct methods
.method constructor <init>(Laeg;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Laeh;->a:Laeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 63
    iget-object v0, p0, Laeh;->a:Laeg;

    iget-object v0, v0, Laeg;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Laeh;->a:Laeg;

    iget-object v4, v4, Laeg;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-virtual {v4}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Logs"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lafp;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lafp;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lafp;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Laeh;->a:Laeg;

    iget-object v3, v3, Laeg;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b013f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Laeh;->a:Laeg;

    iget-object v0, v0, Laeg;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v6}, Laox;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laeh;->a:Laeg;

    iget-object v0, v0, Laeg;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v6}, Laox;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Laeh;->a:Laeg;

    iget-object v0, v0, Laeg;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    return-void
.end method
