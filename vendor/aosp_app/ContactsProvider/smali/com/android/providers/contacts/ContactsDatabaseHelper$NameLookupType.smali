.class public final Lcom/android/providers/contacts/ContactsDatabaseHelper$NameLookupType;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameLookupType"
.end annotation


# static fields
.field public static final EMAIL_BASED_NICKNAME:I = 0x4

.field public static final NAME_COLLATION_KEY:I = 0x2

.field public static final NAME_EXACT:I = 0x0

.field public static final NAME_VARIANT:I = 0x1

.field public static final NICKNAME:I = 0x3

.field public static final TYPE_COUNT:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBasedOnStructuredName(I)Z
    .locals 2
    .parameter "nameLookupType"

    .prologue
    const/4 v0, 0x1

    .line 626
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
