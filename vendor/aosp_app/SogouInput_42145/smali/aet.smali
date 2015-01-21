.class public Laet;
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
    .line 184
    iput-object p1, p0, Laet;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Laet;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ab:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ab:I

    .line 187
    iget-object v0, p0, Laet;->a:Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/LoginActivity;->b(Lcom/sohu/inputmethod/settings/LoginActivity;)V

    .line 188
    return-void
.end method
