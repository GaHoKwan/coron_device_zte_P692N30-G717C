.class public Lzf;
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
    .line 294
    iput-object p1, p0, Lzf;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    iget-object v1, p0, Lzf;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lzf;->a:Lcom/sohu/inputmethod/settings/AccountList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/settings/AccountList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    const/4 v0, 0x1

    return v0
.end method
