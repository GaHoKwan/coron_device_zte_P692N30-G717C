.class Lcom/android/providers/downloads/OmaStatusHandler;
.super Ljava/lang/Object;
.source "OmaStatusHandler.java"


# static fields
.field static final ATTRIBUTE_MISMATCH:I = 0x389

.field static final DEVICE_ABORTED:I = 0x3b8

.field static final DISCARD:I = 0x0

.field static final INSUFFICIENT_MEMORY:I = 0x385

.field static final INVALID_DDVERSION:I = 0x3b7

.field static final INVALID_DESCRIPTOR:I = 0x38a

.field static final LOADER_ERROR:I = 0x3ba

.field static final LOSS_OF_SERVICE:I = 0x387

.field static final MAXIMUM_RETRY:I = 0x3

.field static final NON_ACCEPTABLE_CONTENT:I = 0x3b9

.field static final READY:I = 0x1

.field static final SUCCESS:I = 0x384

.field static final USER_CANCELLED:I = 0x386


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static statusCodeToString(I)Ljava/lang/String;
    .locals 2
    .parameter "code"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, s:Ljava/lang/String;
    const/16 v1, 0x389

    if-ne p0, v1, :cond_1

    .line 63
    const-string v0, "905 Attribute mismatch"

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    const/16 v1, 0x3b8

    if-ne p0, v1, :cond_2

    .line 65
    const-string v0, "952 Device aborted"

    goto :goto_0

    .line 66
    :cond_2
    const/16 v1, 0x385

    if-ne p0, v1, :cond_3

    .line 67
    const-string v0, "901 Insufficient memory"

    goto :goto_0

    .line 68
    :cond_3
    const/16 v1, 0x3b7

    if-ne p0, v1, :cond_4

    .line 69
    const-string v0, "951 Invalid DDVersion"

    goto :goto_0

    .line 70
    :cond_4
    const/16 v1, 0x38a

    if-ne p0, v1, :cond_5

    .line 71
    const-string v0, "906 Invalid descriptor"

    goto :goto_0

    .line 72
    :cond_5
    const/16 v1, 0x3ba

    if-ne p0, v1, :cond_6

    .line 73
    const-string v0, "954 Loader Error"

    goto :goto_0

    .line 74
    :cond_6
    const/16 v1, 0x387

    if-ne p0, v1, :cond_7

    .line 75
    const-string v0, "903 Loss of Service"

    goto :goto_0

    .line 76
    :cond_7
    const/16 v1, 0x3b9

    if-ne p0, v1, :cond_8

    .line 77
    const-string v0, "953 Non-Acceptable Content"

    goto :goto_0

    .line 78
    :cond_8
    const/16 v1, 0x384

    if-ne p0, v1, :cond_9

    .line 79
    const-string v0, "900 Success"

    goto :goto_0

    .line 80
    :cond_9
    const/16 v1, 0x386

    if-ne p0, v1, :cond_0

    .line 81
    const-string v0, "902 User Cancelled"

    goto :goto_0
.end method
