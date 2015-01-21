.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Carriers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers$SIM2Carriers;,
        Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers$SIM1Carriers;,
        Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers$GeminiCarriers;
    }
.end annotation


# static fields
.field public static final CONTENT_URI_2:Landroid/net/Uri; = null

.field public static final CONTENT_URI_DM:Landroid/net/Uri; = null

.field public static final CSD_NUM:Ljava/lang/String; = "csdnum"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final NAPID:Ljava/lang/String; = "napid"

.field public static final OMACPID:Ljava/lang/String; = "omacpid"

.field public static final PROXYID:Ljava/lang/String; = "proxyid"

.field public static final SOURCE_TYPE:Ljava/lang/String; = "sourcetype"

.field public static final SPN:Ljava/lang/String; = "spn"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 583
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_DM:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers;->CONTENT_URI_DM:Landroid/net/Uri;

    .line 586
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI_2:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers;->CONTENT_URI_2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method
