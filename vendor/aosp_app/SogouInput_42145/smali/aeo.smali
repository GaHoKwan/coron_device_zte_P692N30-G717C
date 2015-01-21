.class Laeo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laen;


# direct methods
.method constructor <init>(Laen;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Laeo;->a:Laen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Laeo;->a:Laen;

    iget-object v0, v0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    iget-object v0, p0, Laeo;->a:Laen;

    iget-object v0, v0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    return-void
.end method
