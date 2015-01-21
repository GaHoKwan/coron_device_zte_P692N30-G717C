.class final Ltmsdkobf/gi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private jO:I

.field private kb:I

.field private kg:I

.field private synthetic nt:Ltmsdkobf/gi;


# direct methods
.method private constructor <init>(Ltmsdkobf/gi;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    iput-object p1, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Ltmsdkobf/gi$a;->jO:I

    .line 111
    iput v0, p0, Ltmsdkobf/gi$a;->kb:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/gi$a;->kg:I

    return-void
.end method

.method synthetic constructor <init>(Ltmsdkobf/gi;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Ltmsdkobf/gi$a;-><init>(Ltmsdkobf/gi;)V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 5
    .parameter "event"

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget v3, p0, Ltmsdkobf/gi$a;->kg:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Ltmsdkobf/gi$a;->kg:I

    goto :goto_0

    .line 165
    :pswitch_1
    iget v3, p0, Ltmsdkobf/gi$a;->kg:I

    iput v3, p0, Ltmsdkobf/gi$a;->kg:I

    goto :goto_0

    .line 168
    :pswitch_2
    iget v3, p0, Ltmsdkobf/gi$a;->kg:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Ltmsdkobf/gi$a;->kg:I

    goto :goto_0

    .line 171
    :pswitch_3
    const/4 v3, 0x0

    iput v3, p0, Ltmsdkobf/gi$a;->kb:I

    iput v3, p0, Ltmsdkobf/gi$a;->jO:I

    .line 172
    iget-object v3, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-static {v3}, Ltmsdkobf/gi;->c(Ltmsdkobf/gi;)Landroid/location/LocationManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 173
    .local v0, gpsStatus:Landroid/location/GpsStatus;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    .line 178
    .local v1, maxSatelliteNum:I
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v3

    .line 179
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 180
    .local v2, satelliteItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    if-eqz v2, :cond_0

    .line 184
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    iget v3, p0, Ltmsdkobf/gi$a;->jO:I

    .line 184
    if-gt v3, v1, :cond_0

    .line 186
    iget v3, p0, Ltmsdkobf/gi$a;->jO:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ltmsdkobf/gi$a;->jO:I

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    iget v3, p0, Ltmsdkobf/gi$a;->kb:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ltmsdkobf/gi$a;->kb:I

    goto :goto_1

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .parameter "location"

    .prologue
    .line 117
    iget-object v6, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    new-instance v0, Ltmsdkobf/gi$b;

    iget-object v1, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    iget v3, p0, Ltmsdkobf/gi$a;->jO:I

    .line 118
    iget v4, p0, Ltmsdkobf/gi$a;->kb:I

    iget v5, p0, Ltmsdkobf/gi$a;->kg:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ltmsdkobf/gi$b;-><init>(Ltmsdkobf/gi;Landroid/location/Location;III)V

    .line 117
    invoke-static {v6, v0}, Ltmsdkobf/gi;->a(Ltmsdkobf/gi;Ltmsdkobf/gi$b;)V

    .line 119
    iget-object v0, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-static {v0}, Ltmsdkobf/gi;->a(Ltmsdkobf/gi;)Ltmsdkobf/gi$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-static {v0}, Ltmsdkobf/gi;->a(Ltmsdkobf/gi;)Ltmsdkobf/gi$c;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-static {v1}, Ltmsdkobf/gi;->b(Ltmsdkobf/gi;)Ltmsdkobf/gi$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ltmsdkobf/gi$c;->a(Ltmsdkobf/gi$b;)V

    .line 121
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    .line 126
    if-eqz p1, :cond_0

    .line 127
    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iput v1, p0, Ltmsdkobf/gi$a;->kb:I

    iput v1, p0, Ltmsdkobf/gi$a;->jO:I

    .line 133
    iput v1, p0, Ltmsdkobf/gi$a;->kg:I

    .line 134
    iget-object v0, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-static {v0}, Ltmsdkobf/gi;->a(Ltmsdkobf/gi;)Ltmsdkobf/gi$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-static {v0}, Ltmsdkobf/gi;->a(Ltmsdkobf/gi;)Ltmsdkobf/gi$c;

    move-result-object v0

    iget v1, p0, Ltmsdkobf/gi$a;->kg:I

    invoke-interface {v0, v1}, Ltmsdkobf/gi$c;->av(I)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/gi$a;->kb:I

    iput v0, p0, Ltmsdkobf/gi$a;->jO:I

    .line 148
    const/4 v0, 0x4

    iput v0, p0, Ltmsdkobf/gi$a;->kg:I

    .line 149
    iget-object v0, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-static {v0}, Ltmsdkobf/gi;->a(Ltmsdkobf/gi;)Ltmsdkobf/gi$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Ltmsdkobf/gi$a;->nt:Ltmsdkobf/gi;

    invoke-static {v0}, Ltmsdkobf/gi;->a(Ltmsdkobf/gi;)Ltmsdkobf/gi$c;

    move-result-object v0

    iget v1, p0, Ltmsdkobf/gi$a;->kg:I

    invoke-interface {v0, v1}, Ltmsdkobf/gi$c;->av(I)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    return-void
.end method
