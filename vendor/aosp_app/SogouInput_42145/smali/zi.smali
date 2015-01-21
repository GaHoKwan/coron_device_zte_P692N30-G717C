.class public Lzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AccountList;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AccountList;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lzi;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lzi;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->r:I

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    iget-object v1, p0, Lzi;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lzi;->a:Lcom/sohu/inputmethod/settings/AccountList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/settings/AccountList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 334
    const/4 v0, 0x1

    return v0
.end method
