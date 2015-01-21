.class public Lyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lyk;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lyk;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, -0x1

    move v1, v0

    .line 487
    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lyk;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 488
    iget-object v0, p0, Lyk;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 489
    iget-object v2, p0, Lyk;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lyk;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 491
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 492
    const-string v2, "appDetailData"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 493
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 494
    iget-object v2, p0, Lyk;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 495
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 496
    iget-object v1, p0, Lyk;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 498
    :cond_0
    return-void

    :cond_1
    move v1, p3

    .line 486
    goto :goto_0
.end method
