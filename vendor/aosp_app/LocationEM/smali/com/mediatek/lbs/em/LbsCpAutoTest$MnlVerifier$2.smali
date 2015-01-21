.class Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$2;
.super Ljava/lang/Object;
.source "LbsCpAutoTest.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier$2;->this$1:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 522
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 525
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 528
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 531
    return-void
.end method
