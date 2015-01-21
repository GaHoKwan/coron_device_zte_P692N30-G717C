.class public Lcom/android/contacts/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri; = null

.field public static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.VoiceMailSetting"

.field public static final CDMA_INFO_SPECIFICATION_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.CdmaInfoSpecification"

.field public static final DIAL_NUMBER_INTENT_IP:I = 0x1

.field public static final DIAL_NUMBER_INTENT_NORMAL:I = 0x0

.field public static final DIAL_NUMBER_INTENT_VIDEO:I = 0x2

.field public static final EXTRA_ACTUAL_NUMBER_TO_DIAL:Ljava/lang/String; = "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

.field public static final EXTRA_FOLLOW_SIM_MANAGEMENT:Ljava/lang/String; = "follow_sim_management"

.field public static final EXTRA_INTERNATIONAL_DIAL_OPTION:Ljava/lang/String; = "com.android.phone.extra.international"

.field public static final EXTRA_IS_DATA_COMSUME:Ljava/lang/String; = "com.android.phone.extra.consume"

.field public static final EXTRA_IS_IP_DIAL:Ljava/lang/String; = "com.android.phone.extra.ip"

.field public static final EXTRA_IS_VIDEO_CALL:Ljava/lang/String; = "com.android.phone.extra.video"

.field public static final EXTRA_ORIGINAL_SIM_ID:Ljava/lang/String; = "com.android.phone.extra.original"

.field public static final EXTRA_SLOT_ID:Ljava/lang/String; = "com.android.phone.extra.slot"

.field public static final FILTER_ALL_RESOURCES:I = 0x4e25

.field public static final FILTER_BASE:I = 0x4e20

.field public static final FILTER_SIM_ALL:I = 0x4e21

.field public static final FILTER_SIM_DEFAULT:I = 0x4e21

.field public static final FILTER_SIP_CALL:I = 0x4e24

.field public static final FILTER_TYPE_ALL:I = 0x4e2b

.field public static final FILTER_TYPE_AUTO_REJECT:I = 0x4e35

.field public static final FILTER_TYPE_DEFAULT:I = 0x4e2b

.field public static final FILTER_TYPE_INCOMING:I = 0x4e2c

.field public static final FILTER_TYPE_MISSED:I = 0x4e2d

.field public static final FILTER_TYPE_OUTGOING:I = 0x4e2e

.field public static final IS_GOOGLE_SEARCH:Ljava/lang/String; = "false"

.field public static final MIME_TYPE_VIDEO_CHAT:Ljava/lang/String; = "vnd.android.cursor.item/video-chat-address"

.field public static final OUTGOING_CALL_BROADCASTER:Ljava/lang/String; = "com.android.phone.OutgoingCallBroadcaster"

.field public static final PERFORMANCE_TAG:Ljava/lang/String; = "ContactsPerf"

.field public static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field public static final SCHEME_IMTO:Ljava/lang/String; = "imto"

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto"

.field public static final SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SIM_FILTER_PREF:Ljava/lang/String; = "calllog_sim_filter"

.field public static final STRICT_MODE_TAG:Ljava/lang/String; = "ContactsStrictMode"

.field public static final TYPE_FILTER_PREF:Ljava/lang/String; = "calllog_type_filter"

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail:"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "content://call_log/calls/search_filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->CALLLOG_SEARCH_URI_BASE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
