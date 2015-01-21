.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$MmsSms;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$MmsSms$PendingMessages;
    }
.end annotation


# static fields
.field public static final CONTENT_URI_QUICKTEXT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$MmsSms;->CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method
