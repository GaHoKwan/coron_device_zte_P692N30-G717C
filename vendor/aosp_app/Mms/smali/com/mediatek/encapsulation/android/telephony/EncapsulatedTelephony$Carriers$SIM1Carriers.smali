.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers$SIM1Carriers;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SIM1Carriers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 621
    sget-object v0, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method