.class Lvx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lvw;


# direct methods
.method constructor <init>(Lvw;)V
    .locals 0
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lvx;->a:Lvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lvx;->a:Lvw;

    iget-object v0, v0, Lvw;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    .line 655
    return-void
.end method
