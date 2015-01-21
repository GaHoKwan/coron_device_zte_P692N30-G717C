.class Llv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lls;


# direct methods
.method constructor <init>(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Llv;->a:Lls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 680
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Z

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 684
    iget-object v1, p0, Llv;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 685
    return-void
.end method
