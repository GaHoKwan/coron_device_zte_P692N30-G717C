.class public Ljv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Ljv;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljv;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    const-class v2, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    iget-object v1, p0, Ljv;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 293
    iget-object v0, p0, Ljv;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fk:I

    .line 294
    iget-object v0, p0, Ljv;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->J(Z)V

    .line 295
    return-void
.end method
