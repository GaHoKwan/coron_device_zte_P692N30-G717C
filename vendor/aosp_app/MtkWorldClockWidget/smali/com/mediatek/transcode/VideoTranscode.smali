.class public final Lcom/mediatek/transcode/VideoTranscode;
.super Ljava/lang/Object;
.source "VideoTranscode.java"


# static fields
.field public static final ERROR_TRANSCODE_FAIL:I = -0x7fffffff

.field public static final ERROR_UNSUPPORTED_VIDEO:I = -0x80000000

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TRANSCODER_JNI"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "jtranscode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static native cancel(J)V
.end method

.method public static native deinit(J)V
.end method

.method public static native getProgress(J)I
.end method

.method public static native init()J
.end method

.method public static native transcode(JLjava/lang/String;Ljava/lang/String;JJJJ)I
.end method

.method public static native transcodeAdv(JLjava/lang/String;Ljava/lang/String;JJJJJJ)I
.end method
