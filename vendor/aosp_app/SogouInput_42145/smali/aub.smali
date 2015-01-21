.class Laub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Latv;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;


# direct methods
.method constructor <init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Laub;->a:Latv;

    iput-object p2, p0, Laub;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.LanguageSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Laub;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->startActivity(Landroid/content/Intent;)V

    .line 258
    iget-object v0, p0, Laub;->a:Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->finish()V

    .line 259
    return-void
.end method
