.class Llw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lls;


# direct methods
.method constructor <init>(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Llw;->a:Lls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Llw;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Llw;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b(Ljava/lang/String;)V

    .line 705
    return-void
.end method
