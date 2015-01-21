.class Luy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Luv;


# direct methods
.method constructor <init>(Luv;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Luy;->a:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 648
    iget-object v0, p0, Luy;->a:Luv;

    invoke-static {v0}, Luv;->c(Luv;)V

    .line 649
    iget-object v0, p0, Luy;->a:Luv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luv;->a(Luv;I)I

    .line 650
    iget-object v0, p0, Luy;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)Z

    .line 651
    const/4 v0, 0x1

    return v0
.end method
