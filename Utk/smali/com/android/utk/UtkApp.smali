.class abstract Lcom/android/utk/UtkApp;
.super Landroid/app/Application;
.source "UtkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utk/UtkApp$1;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field static final DEFAULT_DURATION_TIMEOUT:I = 0x9c40

.field static final MENU_ID_BACK:I = 0x2

.field static final MENU_ID_END_SESSION:I = 0x1

.field static final MENU_ID_HELP:I = 0x3

.field public static final TAG:Ljava/lang/String; = "UTK App"

.field static final TONE_DFEAULT_TIMEOUT:I = 0x7d0

.field static final UI_TIMEOUT:I = 0x1d4c0


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 62
    return-void
.end method

.method public static calculateDurationInMilis(Lcom/android/internal/telephony/cdma/utk/Duration;)I
    .locals 3
    .parameter "duration"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, timeout:I
    if-eqz p0, :cond_0

    .line 52
    sget-object v1, Lcom/android/utk/UtkApp$1;->$SwitchMap$com$android$internal$telephony$cdma$utk$Duration$TimeUnit:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/Duration;->timeUnit:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 61
    const/16 v0, 0x3e8

    .line 64
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/Duration;->timeInterval:I

    mul-int/2addr v0, v1

    .line 66
    :cond_0
    return v0

    .line 54
    :pswitch_0
    const v0, 0xea60

    .line 55
    goto :goto_0

    .line 57
    :pswitch_1
    const/16 v0, 0x2710

    .line 58
    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
