.class Lwd;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lwc;


# direct methods
.method constructor <init>(Lwc;)V
    .locals 0
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lwd;->a:Lwc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lwd;->a:Lwc;

    iget-object v0, v0, Lwc;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const-string v1, "downloading detail images from internet!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lwd;->a:Lwc;

    iget-object v0, v0, Lwc;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    .line 877
    return-void
.end method
