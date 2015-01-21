.class Laff;
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
    .line 89
    iput-object p1, p0, Laff;->a:Lafd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Laff;->a:Lafd;

    iget-object v0, v0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Laff;->a:Lafd;

    iget-object v1, v1, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->d(Lsg;)V

    .line 92
    return-void
.end method
