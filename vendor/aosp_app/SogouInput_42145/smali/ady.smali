.class public Lady;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqj;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/GestureEditActivity;


# direct methods
.method private constructor <init>(Lcom/sohu/inputmethod/settings/GestureEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lady;->a:Lcom/sohu/inputmethod/settings/GestureEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sohu/inputmethod/settings/GestureEditActivity;Ladw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lady;-><init>(Lcom/sohu/inputmethod/settings/GestureEditActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lady;->a:Lcom/sohu/inputmethod/settings/GestureEditActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a(Lcom/sohu/inputmethod/settings/GestureEditActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    return-void
.end method

.method public b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public c(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lady;->a:Lcom/sohu/inputmethod/settings/GestureEditActivity;

    invoke-virtual {p1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a()Lcom/sohu/inputmethod/gesture/Gesture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a(Lcom/sohu/inputmethod/settings/GestureEditActivity;Lcom/sohu/inputmethod/gesture/Gesture;)Lcom/sohu/inputmethod/gesture/Gesture;

    .line 126
    const-string v0, "GestureEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rectf1,centerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lady;->a:Lcom/sohu/inputmethod/settings/GestureEditActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a(Lcom/sohu/inputmethod/settings/GestureEditActivity;)Lcom/sohu/inputmethod/gesture/Gesture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lady;->a:Lcom/sohu/inputmethod/settings/GestureEditActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a(Lcom/sohu/inputmethod/settings/GestureEditActivity;)Lcom/sohu/inputmethod/gesture/Gesture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public d(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method
