.class public final Lcom/android/contacts/ContactTileLoaderFactory;
.super Ljava/lang/Object;
.source "ContactTileLoaderFactory.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final COLUMNS_PHONE_ONLY:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_PRESENCE:I = 0x5

.field public static final CONTACT_STATUS:I = 0x6

.field public static final DISPLAY_NAME:I = 0x1

.field public static final LOOKUP_KEY:I = 0x4

.field public static final PHONE_INDICATE_PHONE_SIM:I = 0x8

.field public static final PHONE_IS_SDN_CONTACT:I = 0x9

.field public static final PHONE_NUMBER:I = 0x5

.field public static final PHONE_NUMBER_LABEL:I = 0x7

.field public static final PHONE_NUMBER_TYPE:I = 0x6

.field public static final PHOTO_URI:I = 0x3

.field public static final STARRED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactTileLoaderFactory;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 117
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v4, "starred=?"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "0"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, cursorLoader:Landroid/content/CursorLoader;
    invoke-static {v0, v7, p0}, Lcom/android/contacts/preference/ContactsPreferences;->fixSortOrderByPreference(Landroid/content/CursorLoader;ILandroid/content/Context;)V

    .line 120
    return-object v0
.end method

.method public static createStarredLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 110
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v4, "starred=?"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "display_name ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, cursorLoader:Landroid/content/CursorLoader;
    invoke-static {v0, v7, p0}, Lcom/android/contacts/preference/ContactsPreferences;->fixSortOrderByPreference(Landroid/content/CursorLoader;ILandroid/content/Context;)V

    .line 113
    return-object v0
.end method

.method public static createStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 87
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v4, "indicate_phone_or_sim_contact=-1 "

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v0, cursorLoader:Landroid/content/CursorLoader;
    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/android/contacts/preference/ContactsPreferences;->fixSortOrderByPreference(Landroid/content/CursorLoader;ILandroid/content/Context;)V

    .line 90
    return-object v0
.end method

.method public static createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 95
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "strequent_phone_only"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 102
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/android/contacts/ContactTileLoaderFactory;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

    const-string v4, "indicate_phone_or_sim_contact=-1 "

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, cursorLoader:Landroid/content/CursorLoader;
    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/android/contacts/preference/ContactsPreferences;->fixSortOrderByPreference(Landroid/content/CursorLoader;ILandroid/content/Context;)V

    .line 105
    return-object v0
.end method
