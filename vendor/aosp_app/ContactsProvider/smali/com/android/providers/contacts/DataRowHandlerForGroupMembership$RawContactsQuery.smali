.class interface abstract Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;
.super Ljava/lang/Object;
.source "DataRowHandlerForGroupMembership.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RawContactsQuery"
.end annotation


# static fields
.field public static final ACCOUNT_ID:I = 0x1

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DELETED:I = 0x0

.field public static final TABLE:Ljava/lang/String; = "raw_contacts"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method