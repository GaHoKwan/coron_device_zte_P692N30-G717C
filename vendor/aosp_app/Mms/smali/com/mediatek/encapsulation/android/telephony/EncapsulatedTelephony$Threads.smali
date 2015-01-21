.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Threads;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"

# interfaces
.implements Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final CELL_BROADCAST_THREAD:I = 0x3

.field public static final DATE_SENT:Ljava/lang/String; = "date_sent"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field public static final IP_MESSAGE_GUIDE_THREAD:I = 0xa

.field public static final LATEST_IMPORTANT_DATE:Ljava/lang/String; = "li_date"

.field public static final LATEST_IMPORTANT_SNIPPET:Ljava/lang/String; = "li_snippet"

.field public static final LATEST_IMPORTANT_SNIPPET_CHARSET:Ljava/lang/String; = "li_snippet_cs"

.field public static final STATUS:Ljava/lang/String; = "status"

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri; = null

.field public static final WAPPUSH_THREAD:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 447
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 448
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
