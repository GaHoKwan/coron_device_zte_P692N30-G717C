.class final Lcom/adchina/android/ads/views/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdWebView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->p:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v2, v2, Lcom/adchina/android/ads/views/AdWebView;->l:[F

    iget-object v3, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v3, v3, Lcom/adchina/android/ads/views/AdWebView;->m:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->p:[F

    iget-object v1, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    iget-object v1, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v1, v1, v4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    iget-object v1, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v1, v1, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    iget-object v1, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v1, v1, v6

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v6

    const/high16 v0, -0x3ccc

    iget-object v1, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v1, v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v0, v0, v4

    const/high16 v1, -0x3d4c

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    iget-object v1, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42b4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    iget-object v1, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v1, v1, v5

    neg-float v1, v1

    aput v1, v0, v5

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    const/high16 v1, 0x4387

    iget-object v2, p0, Lcom/adchina/android/ads/views/u;->a:Lcom/adchina/android/ads/views/AdWebView;

    iget-object v2, v2, Lcom/adchina/android/ads/views/AdWebView;->k:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    goto :goto_0
.end method
