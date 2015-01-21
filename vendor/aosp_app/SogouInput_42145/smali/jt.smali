.class public Ljt;
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
    .line 164
    iput-object p1, p0, Ljt;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Ljt;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->J(Z)V

    .line 169
    iget-object v0, p0, Ljt;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Ljt;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ge:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ge:I

    .line 171
    return-void
.end method
