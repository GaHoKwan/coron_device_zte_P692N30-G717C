.class public final Lcom/android/contacts/calllog/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static final CACHED_FORMATTED_NUMBER:I = 0xf

.field public static final CACHED_LOOKUP_URI:I = 0xb

.field public static final CACHED_MATCHED_NUMBER:I = 0xc

.field public static final CACHED_NAME:I = 0x8

.field public static final CACHED_NORMALIZED_NUMBER:I = 0xd

.field public static final CACHED_NUMBER_LABEL:I = 0xa

.field public static final CACHED_NUMBER_TYPE:I = 0x9

.field public static final CACHED_PHOTO_ID:I = 0xe

.field public static final CALLS_JOIN_DATA_VIEW_CALL_NUMBER_TYPE:I = 0xe

.field public static final CALLS_JOIN_DATA_VIEW_CALL_NUMBER_TYPE_ID:I = 0xf

.field public static final CALLS_JOIN_DATA_VIEW_CALL_TYPE:I = 0x4

.field public static final CALLS_JOIN_DATA_VIEW_CONTACT_ID:I = 0x12

.field public static final CALLS_JOIN_DATA_VIEW_COUNTRY_ISO:I = 0x6

.field public static final CALLS_JOIN_DATA_VIEW_DATA_ID:I = 0xc

.field public static final CALLS_JOIN_DATA_VIEW_DATE:I = 0x2

.field public static final CALLS_JOIN_DATA_VIEW_DISPLAY_NAME:I = 0xd

.field public static final CALLS_JOIN_DATA_VIEW_DURATION:I = 0x3

.field public static final CALLS_JOIN_DATA_VIEW_GEOCODED_LOCATION:I = 0x7

.field public static final CALLS_JOIN_DATA_VIEW_ID:I = 0x0

.field public static final CALLS_JOIN_DATA_VIEW_INDICATE_PHONE_SIM:I = 0x11

.field public static final CALLS_JOIN_DATA_VIEW_IP_PREFIX:I = 0x15

.field public static final CALLS_JOIN_DATA_VIEW_IS_READ:I = 0x8

.field public static final CALLS_JOIN_DATA_VIEW_IS_SDN_CONTACT:I = 0x16

.field public static final CALLS_JOIN_DATA_VIEW_LOOKUP_KEY:I = 0x13

.field public static final CALLS_JOIN_DATA_VIEW_NUMBER:I = 0x1

.field public static final CALLS_JOIN_DATA_VIEW_PHOTO_ID:I = 0x10

.field public static final CALLS_JOIN_DATA_VIEW_PHOTO_URI:I = 0x14

.field public static final CALLS_JOIN_DATA_VIEW_RAW_CONTACT_ID:I = 0xb

.field public static final CALLS_JOIN_DATA_VIEW_SIM_ID:I = 0x9

.field public static final CALLS_JOIN_DATA_VIEW_VIOCEMAIL_RUI:I = 0x5

.field public static final CALLS_JOIN_DATA_VIEW_VTCALL:I = 0xa

.field public static final CALL_NUMBER_TYPE:Ljava/lang/String; = "calllognumbertype"

.field public static final CALL_NUMBER_TYPE_ID:Ljava/lang/String; = "calllognumbertypeid"

.field public static final CALL_TYPE:I = 0x4

.field public static final COUNTRY_ISO:I = 0x5

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field public static final EXTENDED_PROJECTION:[Ljava/lang/String; = null

.field public static final GEOCODED_LOCATION:I = 0x7

.field public static final ID:I = 0x0

.field public static final IS_READ:I = 0x10

.field public static final NUMBER:I = 0x1

.field public static final PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String; = null

.field public static final SECTION:I = 0x11

.field public static final SECTION_NAME:Ljava/lang/String; = "section"

.field public static final SECTION_NEW_HEADER:I = 0x0

.field public static final SECTION_NEW_ITEM:I = 0x1

.field public static final SECTION_OLD_HEADER:I = 0x2

.field public static final SECTION_OLD_ITEM:I = 0x3

.field public static final VOICEMAIL_URI:I = 0x6

.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/android/contacts/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    sget-object v0, Lcom/android/contacts/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "section"

    aput-object v2, v0, v1

    .line 119
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "simid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vtcall"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calllognumbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "calllognumbertypeid"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ip_prefix"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/calllog/CallLogQuery;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
