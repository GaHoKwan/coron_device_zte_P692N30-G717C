.class Lxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lxf;->a:Lxb;

    iput p2, p0, Lxf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lxf;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lxf;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 314
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 315
    const-string v3, "appDetailData"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 316
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 317
    iget-object v0, p0, Lxf;->a:Lxb;

    iget-object v4, v0, Lxb;->a:Lwy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====================================context is null?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lxf;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lwy;->b(Lwy;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lxf;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 321
    iget-object v0, p0, Lxf;->a:Lxb;

    iget-object v0, v0, Lxb;->a:Lwy;

    invoke-static {v0}, Lwy;->a(Lwy;)Lcom/sohu/inputmethod/platform/AppManagerActivity;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    return-void

    :cond_0
    move v0, v1

    .line 317
    goto :goto_0
.end method
