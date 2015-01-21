.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb$Conversations;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$TextBasedSmsCbColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Conversations"
.end annotation


# static fields
.field public static final ADDRESS_ID:Ljava/lang/String; = "address_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "msg_count"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Landroid/provider/Telephony$SmsCb$Conversations;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb$Conversations;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
