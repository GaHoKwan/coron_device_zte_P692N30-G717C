.class public interface abstract Lcom/android/providers/contacts/DialerSearchSupport$DialerSearchQuery;
.super Ljava/lang/Object;
.source "DialerSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DialerSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialerSearchQuery"
.end annotation


# static fields
.field public static final CALL_GEOCODED_LOCATION_INDEX:I = 0x5

.field public static final CALL_LOG_DATE_INDEX:I = 0x2

.field public static final CALL_LOG_ID_INDEX:I = 0x3

.field public static final CALL_TYPE_INDEX:I = 0x4

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final CONTACT_NAME_LOOKUP_INDEX:I = 0xe

.field public static final CONTACT_STARRED_INDEX:I = 0x9

.field public static final DS_MATCHED_DATA_OFFSETS:I = 0x10

.field public static final DS_MATCHED_NAME_OFFSETS:I = 0x11

.field public static final INDICATE_PHONE_SIM_INDEX:I = 0x8

.field public static final IS_SDN_CONTACT:I = 0xf

.field public static final NAME_INDEX:I = 0xc

.field public static final NAME_LOOKUP_ID_INDEX:I = 0x0

.field public static final PHOTO_ID_INDEX:I = 0xa

.field public static final SEARCH_PHONE_NUMBER_INDEX:I = 0xd

.field public static final SEARCH_PHONE_TYPE_INDEX:I = 0xb

.field public static final SIM_ID_INDEX:I = 0x6

.field public static final TABLE:Ljava/lang/String; = "dialer_search"

.field public static final VTCALL:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vds_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vds_call_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vds_call_log_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vds_call_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vds_geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vds_sim_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vds_vtcall"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "vds_indicate_phone_sim"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vds_starred"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vds_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "vds_phone_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vds_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "vds_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "vds_lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vds_is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "matched_data_offsets"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "matched_name_offsets"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DialerSearchSupport$DialerSearchQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
