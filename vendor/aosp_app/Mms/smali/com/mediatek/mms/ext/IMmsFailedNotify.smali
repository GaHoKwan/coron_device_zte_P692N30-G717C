.class public interface abstract Lcom/mediatek/mms/ext/IMmsFailedNotify;
.super Ljava/lang/Object;
.source "IMmsFailedNotify.java"


# static fields
.field public static final CANCEL_DOWNLOAD:I = 0x5

.field public static final CONNECTION_FAILED:I = 0x2

.field public static final DATA_OCCUPIED:I = 0x1

.field public static final DISABLE_DELIVERY_REPORT:I = 0x6

.field public static final GATEWAY_NO_RESPONSE:I = 0x3

.field public static final HTTP_ABNORMAL:I = 0x4

.field public static final REQUEST_RESPONSE_TEXT:I


# virtual methods
.method public abstract getFailedNotificationEnabled()Z
.end method

.method public abstract popupToast(ILjava/lang/String;)V
.end method

.method public abstract setFailedNotificationEnabled(Z)V
.end method
