.class Llh;
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
    .line 257
    iput-object p1, p0, Llh;->a:Llf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Llh;->a:Llf;

    iget-object v0, v0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->setResult(I)V

    .line 261
    iget-object v0, p0, Llh;->a:Llf;

    iget-object v0, v0, Llf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->finish()V

    .line 262
    return-void
.end method
