.class public Lcom/mediatek/engineermode/io/EmGpio;
.super Ljava/lang/Object;
.source "EmGpio.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "em_gpio_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCurrent(I)I
.end method

.method public static native getGpioMaxNumber()I
.end method

.method public static native gpioInit()Z
.end method

.method public static native gpioUnInit()Z
.end method

.method public static native newGetCurrent(II)I
.end method

.method public static native newSetCurrent(IIIIIIIIII)Z
.end method

.method public static native setCurrent(III)Z
.end method

.method public static native setGpioDataHigh(I)Z
.end method

.method public static native setGpioDataLow(I)Z
.end method

.method public static native setGpioInput(I)Z
.end method

.method public static native setGpioOutput(I)Z
.end method

.method public static native setSd30Mode(IIIII)Z
.end method
