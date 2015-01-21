.class Lhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lhs;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lhs;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Lhh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhs;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Lhh;

    move-result-object v0

    iget-object v0, v0, Lhh;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lhs;->a:Lhr;

    iget-object v1, p0, Lhs;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Lhh;

    move-result-object v1

    iget-object v1, v1, Lhh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhr;->a(Ljava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method
