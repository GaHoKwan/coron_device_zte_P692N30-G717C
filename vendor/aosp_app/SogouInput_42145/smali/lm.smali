.class Llm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Llf;


# direct methods
.method constructor <init>(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Llm;->a:Llf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 582
    iget-object v1, p0, Llm;->a:Llf;

    iget-object v1, v1, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 583
    return-void
.end method
