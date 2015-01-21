.class Lxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lxj;


# direct methods
.method constructor <init>(Lxj;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lxn;->a:Lxj;

    iput p2, p0, Lxn;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lxn;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v2

    iget-object v0, p0, Lxn;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lxn;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    .line 306
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 307
    const-string v3, "appDetailData"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 309
    iget-object v0, p0, Lxn;->a:Lxj;

    iget-object v4, v0, Lxj;->a:Lxg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====================================context is null?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lxn;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lxg;->a(Lxg;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lxn;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 312
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 313
    iget-object v0, p0, Lxn;->a:Lxj;

    iget-object v0, v0, Lxj;->a:Lxg;

    invoke-static {v0}, Lxg;->a(Lxg;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 314
    return-void

    :cond_0
    move v0, v1

    .line 309
    goto :goto_0
.end method
