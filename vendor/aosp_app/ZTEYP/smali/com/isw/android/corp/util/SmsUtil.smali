.class public Lcom/isw/android/corp/util/SmsUtil;
.super Ljava/lang/Object;
.source "SmsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniSmsUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WinksSendSmsUni(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "phoneNumber"
    .parameter "sendContent"
    .parameter "simNo"

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method
