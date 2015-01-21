.class public Lats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lats;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 1190
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lats;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    const-class v2, Lcom/sohu/inputmethod/settings/AccountList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1191
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    iget-object v1, p0, Lats;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1193
    const/4 v0, 0x1

    return v0
.end method
