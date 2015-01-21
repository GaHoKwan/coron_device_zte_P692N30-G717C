.class public Lya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1443
    iput-object p1, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1447
    iget-object v0, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-object v1, v0, Lxt;->b:Ljava/lang/String;

    .line 1449
    new-instance v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    invoke-direct {v2}, Lcom/sohu/inputmethod/platform/PlatformAppInfo;-><init>()V

    .line 1450
    iget-object v0, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-object v0, v0, Lxt;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    .line 1451
    iput v3, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    .line 1452
    iput-object v1, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    .line 1453
    const-string v0, "com.sogou.platform.advertisement"

    iput-object v0, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 1454
    iget-object v0, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 1455
    iget-object v0, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-object v1, v0, Lxt;->d:Ljava/lang/String;

    .line 1456
    iget-object v0, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-object v0, v0, Lxt;->c:Ljava/lang/String;

    .line 1457
    iget-object v2, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v1, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1459
    iget-object v0, p0, Lya;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1461
    :cond_0
    return-void
.end method
