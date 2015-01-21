.class public Lgc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/location/LocationListener;

.field private a:Landroid/location/LocationManager;


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lgc;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lgc;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lgc;->a:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method
