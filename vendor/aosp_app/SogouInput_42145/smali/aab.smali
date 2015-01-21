.class public Laab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Laab;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 702
    iget-object v1, p0, Laab;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 703
    return-void
.end method
