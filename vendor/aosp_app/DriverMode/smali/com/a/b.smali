.class final Lcom/a/b;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/a/a;


# direct methods
.method constructor <init>(Lcom/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->a(Lcom/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->b(Lcom/a/a;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    iget-object v1, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v1}, Lcom/a/a;->b(Lcom/a/a;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->a(Lcom/a/a;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    :cond_2
    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->c(Lcom/a/a;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0, p1}, Lcom/a/a;->a(Lcom/a/a;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    :cond_3
    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/a/a;->a(Lcom/a/a;J)J

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->e(Lcom/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->f(Lcom/a/a;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 2

    const/16 v0, -0x71

    iget-object v1, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v1}, Lcom/a/a;->d(Lcom/a/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v1, v0}, Lcom/a/a;->a(Lcom/a/a;I)V

    return-void

    :pswitch_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x71

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x71

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    const/16 v0, -0x71

    iget-object v1, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v1}, Lcom/a/a;->d(Lcom/a/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v1, v0}, Lcom/a/a;->a(Lcom/a/a;I)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
