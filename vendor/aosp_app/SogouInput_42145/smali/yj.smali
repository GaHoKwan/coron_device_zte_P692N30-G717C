.class public Lyj;
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
    .line 468
    iput-object p1, p0, Lyj;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 473
    iget-object v1, p0, Lyj;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 474
    const-string v1, "select_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    iget-object v1, p0, Lyj;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 476
    return-void
.end method
