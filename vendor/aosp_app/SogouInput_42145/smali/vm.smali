.class public Lvm;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lvm;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lvm;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const-string v1, "downloading detail images from internet!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lvm;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    .line 1075
    return-void
.end method
