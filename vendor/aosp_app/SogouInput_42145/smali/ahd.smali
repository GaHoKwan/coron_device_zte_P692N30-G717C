.class Lahd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lahb;


# direct methods
.method constructor <init>(Lahb;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lahd;->a:Lahb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lahd;->a:Lahb;

    iget-object v0, v0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lahd;->a:Lahb;

    iget-object v1, v1, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->d(Lsg;)V

    .line 75
    return-void
.end method