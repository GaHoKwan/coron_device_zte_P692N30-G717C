.class Lafi;
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
    .line 148
    iput-object p1, p0, Lafi;->a:Lafd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lafi;->a:Lafd;

    iget-object v0, v0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->setResult(I)V

    .line 151
    iget-object v0, p0, Lafi;->a:Lafd;

    iget-object v0, v0, Lafd;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->finish()V

    .line 152
    return-void
.end method
