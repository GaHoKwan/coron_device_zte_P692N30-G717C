.class Lcom/android/mipop/paintpad/activities/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic aD:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/e;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bm()Lcom/android/mipop/paintpad/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/e;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->s(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setStrokeWidth(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/e;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->j(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bm()Lcom/android/mipop/paintpad/b/b;

    move-result-object v0

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/e;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->s(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/b/b;->setStrokeWidth(F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
