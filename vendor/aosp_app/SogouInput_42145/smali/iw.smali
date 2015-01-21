.class Liw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liu;


# direct methods
.method constructor <init>(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Liw;->a:Liu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Liw;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Liw;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liw;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Liw;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 313
    :cond_0
    return-void
.end method
