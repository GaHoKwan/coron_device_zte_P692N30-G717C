.class Lafe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lafd;


# direct methods
.method constructor <init>(Lafd;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lafe;->a:Lafd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lafe;->a:Lafd;

    iget-object v0, v0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    iget-object v0, p0, Lafe;->a:Lafd;

    iget-object v0, v0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    return-void
.end method
