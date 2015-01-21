.class public Lyz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformTransferActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lyz;->a:Lcom/sohu/inputmethod/platform/PlatformTransferActivity;

    iput-object p2, p0, Lyz;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 88
    iget-object v2, p0, Lyz;->a:Lcom/sohu/inputmethod/platform/PlatformTransferActivity;

    iget-object v0, p0, Lyz;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;Z)V

    .line 89
    iget-object v0, p0, Lyz;->a:Lcom/sohu/inputmethod/platform/PlatformTransferActivity;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->b(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;Z)V

    .line 90
    iget-object v0, p0, Lyz;->a:Lcom/sohu/inputmethod/platform/PlatformTransferActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;->a(Lcom/sohu/inputmethod/platform/PlatformTransferActivity;)V

    .line 91
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
