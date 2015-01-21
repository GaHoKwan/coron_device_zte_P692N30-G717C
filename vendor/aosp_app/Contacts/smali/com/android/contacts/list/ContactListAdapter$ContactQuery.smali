.class public Lcom/android/contacts/list/ContactListAdapter$ContactQuery;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactQuery"
.end annotation


# static fields
.field public static final CONTACT_CONTACT_STATUS:I = 0x3

.field public static final CONTACT_DISPLAY_NAME:I = 0x1

.field public static final CONTACT_ID:I = 0x0

.field protected static final CONTACT_INDEX_IN_SIM:I = 0x9

.field protected static final CONTACT_INDICATE_PHONE_SIM:I = 0x8

.field public static final CONTACT_IS_USER_PROFILE:I = 0x7

.field public static final CONTACT_LOOKUP_KEY:I = 0x6

.field public static final CONTACT_PHOTO_ID:I = 0x4

.field public static final CONTACT_PHOTO_URI:I = 0x5

.field public static final CONTACT_PRESENCE_STATUS:I = 0x2

.field private static final CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String; = null

.field private static final CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String; = null

.field public static final CONTACT_SNIPPET:I = 0xa

.field private static final FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String; = null

.field private static final FILTER_PROJECTION_PRIMARY:[Ljava/lang/String; = null

.field public static final IS_SDN_CONTACT:I = 0xb

.field public static final STATUS_ICON:I = 0xd

.field public static final STATUS_RES_PACKAGE:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "index_in_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_status_icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 66
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "index_in_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_status_icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 87
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "index_in_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_status_icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 108
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "index_in_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_status_icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method
