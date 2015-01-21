.class Laep;
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
    .line 64
    iput-object p1, p0, Laep;->a:Laen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Laep;->a:Laen;

    iget-object v0, v0, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Laep;->a:Laen;

    iget-object v1, v1, Laen;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->a(Lcom/sohu/inputmethod/settings/LoginActivity;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->d(Lsg;)V

    .line 67
    return-void
.end method
