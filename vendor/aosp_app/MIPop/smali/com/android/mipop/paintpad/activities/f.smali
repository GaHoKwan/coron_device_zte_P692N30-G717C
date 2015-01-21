.class Lcom/android/mipop/paintpad/activities/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic aD:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/f;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    const/high16 v5, 0x40e0

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/f;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->t(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/paintpad/activities/f;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v3}, Lcom/android/mipop/paintpad/activities/MainActivity;->s(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/f;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v4}, Lcom/android/mipop/paintpad/activities/MainActivity;->s(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, p2, 0x1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/f;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->s(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    invoke-static {v0}, Lcom/android/mipop/paintpad/b/b;->c(F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
