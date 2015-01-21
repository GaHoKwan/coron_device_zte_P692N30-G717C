.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb$CbChannel;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CbChannel"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Landroid/provider/Telephony$SmsCb$CbChannel;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb$CbChannel;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
