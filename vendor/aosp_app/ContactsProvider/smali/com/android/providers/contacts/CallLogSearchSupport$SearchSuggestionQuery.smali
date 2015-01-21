.class interface abstract Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestionQuery;
.super Ljava/lang/Object;
.source "CallLogSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/CallLogSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SearchSuggestionQuery"
.end annotation


# static fields
.field public static final CALLS_DATE:I = 0x2

.field public static final CALLS_ID:I = 0x0

.field public static final CALLS_NUMBER:I = 0x1

.field public static final CALLS_NUMBER_TYPE:I = 0x4

.field public static final CALLS_TYPE:I = 0x3

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DISPLAY_NAME:I = 0x5

.field public static final INDICATE_PHONE_SIM:I = 0x8

.field public static final IS_SDN_CONTACT:I = 0x9

.field public static final PHOTO_URI:I = 0xa

.field public static final RAW_CONTACT_ID:I = 0x6

.field public static final SEARCH_INDEX_JOIN:Ljava/lang/String; = " LEFT JOIN ( SELECT contact_id AS snippet_contact_id FROM search_index WHERE name MATCH \'*?*\')  ON (snippet_contact_id=view_data.contact_id)"

.field public static final SNIPPET_CONTACT_ID:Ljava/lang/String; = "snippet_contact_id"

.field public static final TABLE:Ljava/lang/String; = "calls LEFT JOIN view_data ON (view_data._id=calls.data_id) "

.field public static final VT_CALL:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "calls._id as _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calls.number as number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calls.date as date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calls.type as type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calls.numbertype as numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "view_data.display_name as display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calls.raw_contact_id as raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calls.vtcall as vtcall"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "view_data.indicate_phone_or_sim_contact as indicate_phone_sim"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "view_data.is_sdn_contact as is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "view_data.photo_uri as photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestionQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
