.class public Lcom/sohu/inputmethod/settings/GestureEditActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/Spinner;

.field private a:Lcom/sohu/inputmethod/gesture/Gesture;

.field private a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

.field private a:[I

.field private a:[Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private b:Lcom/sohu/inputmethod/gesture/Gesture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/GestureEditActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/GestureEditActivity;)Lcom/sohu/inputmethod/gesture/Gesture;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/GestureEditActivity;Lcom/sohu/inputmethod/gesture/Gesture;)Lcom/sohu/inputmethod/gesture/Gesture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    return-object p1
.end method


# virtual methods
.method public cancelGesture(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->finish()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:[I

    .line 36
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:[Ljava/lang/String;

    .line 37
    const v0, 0x7f0700bc

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    .line 38
    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    .line 39
    new-instance v1, Lady;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lady;-><init>(Lcom/sohu/inputmethod/settings/GestureEditActivity;Ladw;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lqj;)V

    .line 41
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setFadeOffset(J)V

    .line 42
    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setHorizontalScrollBarEnabled(Z)V

    .line 43
    const v1, 0x7f0700bb

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Landroid/widget/Spinner;

    .line 44
    const v1, 0x7f0700bd

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Landroid/widget/Button;

    .line 45
    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Landroid/widget/Button;

    .line 46
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Landroid/widget/Button;

    new-instance v2, Ladw;

    invoke-direct {v2, p0}, Ladw;-><init>(Lcom/sohu/inputmethod/settings/GestureEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Landroid/widget/Button;

    new-instance v2, Ladx;

    invoke-direct {v2, p0}, Ladx;-><init>(Lcom/sohu/inputmethod/settings/GestureEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CATAGORY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    iput v3, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:I

    .line 81
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    invoke-static {}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a()Lcom/sohu/inputmethod/gesture/Gesture;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 69
    const-string v1, "GestureEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rectf,centerX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "GestureEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overlayview width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Lcom/sohu/inputmethod/gesture/Gesture;

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 73
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Lcom/sohu/inputmethod/gesture/Gesture;

    if-nez v1, :cond_1

    .line 74
    const-string v1, "GestureEditActivity"

    const-string v2, "null gestureeeeeeeeeeeeeeeeee"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setGesture(Lcom/sohu/inputmethod/gesture/Gesture;)V

    .line 77
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/Gesture;->c()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:I

    goto :goto_0
.end method

.method public saveGesture(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a()Lcom/sohu/inputmethod/gesture/Gesture;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 86
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, "GestureEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rectf1,centerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, "GestureEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getwidth()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/gesture/Gesture;->b(I)V

    .line 92
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/gesture/Gesture;->a(I)V

    .line 93
    invoke-static {}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a()Lqg;

    move-result-object v1

    .line 94
    iget v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 95
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v1, v0, v2}, Lqg;->a(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V

    .line 101
    :goto_1
    invoke-virtual {v1}, Lqg;->a()Z

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->finish()V

    goto/16 :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->b:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v1, v2, v3}, Lqg;->b(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V

    .line 99
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/GestureEditActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v1, v0, v2}, Lqg;->a(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V

    goto :goto_1
.end method
