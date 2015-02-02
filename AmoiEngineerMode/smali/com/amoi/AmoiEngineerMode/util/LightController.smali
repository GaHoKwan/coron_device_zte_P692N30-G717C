.class public Lcom/amoi/AmoiEngineerMode/util/LightController;
.super Ljava/lang/Object;
.source "LightController.java"


# static fields
.field public static final BUTTON_LED:I = 0xa

.field private static final BUTTON_LED_FILE:Ljava/lang/String; = "/sys/class/leds/button-backlight/brightness"

.field public static final GREEN_LED:I = 0x1

.field private static final GREEN_LED_FILE:Ljava/lang/String; = "/sys/class/leds/green/brightness"

.field public static final LCD_LED:I = 0xb

.field private static final LCD_LED_FILE:Ljava/lang/String; = "/sys/class/leds/lcd-backlight/brightness"

.field public static final RED_LED:I = 0x0

.field private static final RED_LED_FILE:Ljava/lang/String; = "/sys/class/leds/red/brightness"

.field public static final STATE_OFF:Ljava/lang/String; = "0"

.field public static final STATE_ON:Ljava/lang/String; = "255"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyToDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "deviceFile"
    .parameter "state"

    .prologue
    .line 32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v2           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/util/LightController;->TAG:Ljava/lang/String;

    const-string v4, "error to change led"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public MarqueeOFF()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "/sys/class/leds/red/brightness"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "/sys/class/leds/green/brightness"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public MarqueeON(I)V
    .locals 2
    .parameter "light"

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 90
    const-string v0, "/sys/class/leds/red/brightness"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "/sys/class/leds/green/brightness"

    const-string v1, "255"

    invoke-direct {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 93
    const-string v0, "/sys/class/leds/red/brightness"

    const-string v1, "255"

    invoke-direct {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "/sys/class/leds/green/brightness"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLightState(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "deviceFile"

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v7, ""

    .line 69
    :goto_0
    return-object v7

    .line 52
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, file:Ljava/io/File;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 54
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 55
    .local v1, data:[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v6, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 58
    .local v5, len:I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v4, inStream:Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 60
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    .end local v4           #inStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 66
    .local v2, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/amoi/AmoiEngineerMode/util/LightController;->TAG:Ljava/lang/String;

    const-string v8, "error to read led state"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const-string v7, ""

    goto :goto_0

    .line 62
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 63
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public isShowLED(Ljava/lang/String;Z)V
    .locals 1
    .parameter "devFile"
    .parameter "isON"

    .prologue
    .line 106
    const-string v0, "0"

    .line 107
    .local v0, state:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 108
    const-string v0, "255"

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    return-void
.end method

.method public setBrightness(Ljava/lang/String;I)V
    .locals 1
    .parameter "devFile"
    .parameter "value"

    .prologue
    .line 117
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, state:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setLEDStates(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "red"
    .parameter "green"

    .prologue
    .line 83
    const-string v0, "/sys/class/leds/red/brightness"

    invoke-direct {p0, v0, p1}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "/sys/class/leds/green/brightness"

    invoke-direct {p0, v0, p2}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setLightState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "deviceFile"
    .parameter "state"

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amoi/AmoiEngineerMode/util/LightController;->applyToDevice(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
