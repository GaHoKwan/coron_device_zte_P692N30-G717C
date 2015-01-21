.class public final Lcom/mediatek/email/provider/history/EmailAddress;
.super Lcom/mediatek/email/provider/history/EmailAddressContent;
.source "EmailAddress.java"

# interfaces
.implements Lcom/mediatek/email/provider/history/EmailAddressContent$AddressColumns;


# static fields
.field private static final CONTENT_ADDRESS_COLUMN:I = 0x1

.field private static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_QUERY_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Address"

.field private static final TAG:Ljava/lang/String; = "EmailAddress"


# instance fields
.field public mAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/email/provider/history/EmailAddressContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_QUERY_URI:Landroid/net/Uri;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emailAddress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mediatek/email/provider/history/EmailAddressContent;-><init>()V

    .line 31
    sget-object v0, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/email/provider/history/EmailAddressContent;->mBaseUri:Landroid/net/Uri;

    .line 32
    return-void
.end method

.method public static queryAddress(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static restoreAddressWithId(Landroid/content/Context;J)Lcom/mediatek/email/provider/history/EmailAddress;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 35
    const-class v1, Lcom/mediatek/email/provider/history/EmailAddress;

    sget-object v2, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mediatek/email/provider/history/EmailAddressContent;->restoreAddresstWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/mediatek/email/provider/history/EmailAddressContent;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/provider/history/EmailAddress;

    return-object v0
.end method

.method public static saveAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "text"

    .prologue
    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "emailAddress"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, res:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 66
    const-string v2, "EmailAddress"

    const-string v3, "insert address to history DB failed"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/email/provider/history/EmailAddress;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/email/provider/history/EmailAddressContent;->mId:J

    .line 57
    sget-object v0, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/email/provider/history/EmailAddressContent;->mBaseUri:Landroid/net/Uri;

    .line 58
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/provider/history/EmailAddress;->mAddress:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/email/provider/history/EmailAddress;->mAddress:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/mediatek/email/provider/history/EmailAddress;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v0
.end method
