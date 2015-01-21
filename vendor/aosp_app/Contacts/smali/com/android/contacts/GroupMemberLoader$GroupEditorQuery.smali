.class public Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;
.super Ljava/lang/Object;
.source "GroupMemberLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupMemberLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupEditorQuery"
.end annotation


# static fields
.field public static final CONTACT_DISPLAY_NAME_PRIMARY:I = 0x2

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_INDEX_IN_SIM_COLUMN_INDEX:I = 0x6

.field public static final CONTACT_INDICATE_PHONE_SIM_COLUMN_INDEX:I = 0x5

.field public static final CONTACT_IS_SDN_CONTACT_COLUMN_INDEX:I = 0x7

.field public static final CONTACT_LOOKUP_KEY:I = 0x4

.field public static final CONTACT_PHOTO_URI:I = 0x3

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final RAW_CONTACT_ID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "index_in_sim"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
