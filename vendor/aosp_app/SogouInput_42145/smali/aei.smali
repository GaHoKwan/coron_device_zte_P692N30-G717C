.class public Laei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Laei;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Laei;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Laei;->a:Lcom/sohu/inputmethod/settings/LogFeedBackActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0282

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0283

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b02ab

    new-instance v3, Laej;

    invoke-direct {v3, p0}, Laej;-><init>(Laei;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 97
    return-void
.end method
