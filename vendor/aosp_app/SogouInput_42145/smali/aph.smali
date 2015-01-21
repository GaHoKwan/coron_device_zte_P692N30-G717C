.class Laph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lql;


# instance fields
.field final synthetic a:Lapf;


# direct methods
.method constructor <init>(Lapf;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Laph;->a:Lapf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Laph;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lapi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Laph;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lapi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lapi;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 202
    :cond_0
    return-void
.end method

.method public b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Laph;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lapi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Laph;->a:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lapi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lapi;->b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 208
    :cond_0
    return-void
.end method
