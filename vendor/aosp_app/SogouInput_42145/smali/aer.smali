.class Laer;
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
    .line 123
    iput-object p1, p0, Laer;->a:Laen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Laer;->a:Laen;

    iget-object v0, v0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->setResult(I)V

    .line 126
    iget-object v0, p0, Laer;->a:Laen;

    iget-object v0, v0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->finish()V

    .line 127
    return-void
.end method
