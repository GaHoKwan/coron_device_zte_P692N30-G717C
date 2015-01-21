.class Ltx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Ltu;


# direct methods
.method constructor <init>(Ltu;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Ltx;->a:Ltu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Ltx;->a:Ltu;

    invoke-static {v0}, Ltu;->c(Ltu;)V

    .line 665
    iget-object v0, p0, Ltx;->a:Ltu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltu;->a(Ltu;I)I

    .line 666
    iget-object v0, p0, Ltx;->a:Ltu;

    invoke-static {v0}, Ltu;->b(Ltu;)Z

    .line 667
    const/4 v0, 0x1

    return v0
.end method
