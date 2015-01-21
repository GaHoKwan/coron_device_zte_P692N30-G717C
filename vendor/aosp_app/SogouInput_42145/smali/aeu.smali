.class public Laeu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Laeu;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Laeu;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->r:I

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    iget-object v1, p0, Laeu;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Laeu;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/settings/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method
