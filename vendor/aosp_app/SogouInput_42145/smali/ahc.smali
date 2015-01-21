.class Lahc;
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
    .line 64
    iput-object p1, p0, Lahc;->a:Lahb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lahc;->a:Lahb;

    iget-object v0, v0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    iget-object v0, p0, Lahc;->a:Lahb;

    iget-object v0, v0, Lahb;->a:Lcom/sohu/inputmethod/settings/UpgradeDictDialog;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method
