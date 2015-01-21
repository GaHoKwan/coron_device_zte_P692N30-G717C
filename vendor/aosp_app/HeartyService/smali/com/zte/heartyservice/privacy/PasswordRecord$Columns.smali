.class public Lcom/zte/heartyservice/privacy/PasswordRecord$Columns;
.super Ljava/lang/Object;
.source "PasswordRecord.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ACCOUNT_DESCRIPTION:Ljava/lang/String; = "account_description"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final ACCOUNT_TYPE_NAME:[Ljava/lang/String; = null

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMN_INDEX_ACCOUNT_DESCRIPTION:I = 0x3

.field public static final COLUMN_INDEX_ACCOUNT_TYPE:I = 0x2

.field public static final COLUMN_INDEX_ID:I = 0x0

.field public static final COLUMN_INDEX_KEY:I = 0x1

.field public static final COLUMN_INDEX_NOTES:I = 0x6

.field public static final COLUMN_INDEX_PASSWORD:I = 0x5

.field public static final COLUMN_INDEX_USER_NAME:I = 0x4

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final NOTES:Ljava/lang/String; = "notes"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "website"

    aput-object v1, v0, v3

    const-string v1, "email"

    aput-object v1, v0, v4

    const-string v1, "game"

    aput-object v1, v0, v5

    const-string v1, "chat"

    aput-object v1, v0, v6

    const-string v1, "bank"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "others"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordRecord$Columns;->ACCOUNT_TYPE_NAME:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "key"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "account_description"

    aput-object v1, v0, v6

    const-string v1, "user_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordRecord$Columns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
