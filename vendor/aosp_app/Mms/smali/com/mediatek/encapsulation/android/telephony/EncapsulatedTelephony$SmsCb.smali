.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$TextBasedSmsCbColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsCb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb$CbChannel;,
        Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb$CanonicalAddressesColumns;,
        Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb$Conversations;
    }
.end annotation


# static fields
.field public static final ADDRESS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/provider/Telephony$SmsCb;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;->CONTENT_URI:Landroid/net/Uri;

    .line 126
    sget-object v0, Landroid/provider/Telephony$SmsCb;->ADDRESS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;->ADDRESS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;IIJZLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "sim_id"
    .parameter "channel_id"
    .parameter "date"
    .parameter "read"
    .parameter "body"

    .prologue
    .line 150
    invoke-static/range {p0 .. p7}, Landroid/provider/Telephony$SmsCb;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;IIJZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "cr"
    .parameter "projection"

    .prologue
    .line 100
    invoke-static {p0, p1}, Landroid/provider/Telephony$SmsCb;->query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 109
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Telephony$SmsCb;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
