.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers$GeminiCarriers;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeminiCarriers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_DM:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 738
    sget-object v0, Landroid/provider/Telephony$Carriers$GeminiCarriers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers$GeminiCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 742
    sget-object v0, Landroid/provider/Telephony$Carriers$GeminiCarriers;->CONTENT_URI_DM:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers$GeminiCarriers;->CONTENT_URI_DM:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
