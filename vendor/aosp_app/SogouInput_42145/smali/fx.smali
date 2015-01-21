.class public Lfx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/telephony/PhoneStateListener;

.field private a:Landroid/telephony/TelephonyManager;

.field private a:Lfy;

.field b:Landroid/telephony/PhoneStateListener;


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lfx;->a:Lfy;

    .line 197
    :try_start_0
    iget-object v0, p0, Lfx;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lfx;->a:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 198
    iget-object v0, p0, Lfx;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lfx;->b:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method
