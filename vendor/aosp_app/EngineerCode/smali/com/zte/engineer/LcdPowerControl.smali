.class public Lcom/zte/engineer/LcdPowerControl;
.super Ljava/lang/Object;
.source "LcdPowerControl.java"


# static fields
.field public static final FAIL:I = -0x1

.field public static final SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "com_zte_engineer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native LcdPowerOff()I
.end method

.method public native LcdPowerOn()I
.end method
