.class Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporaryEntry"
.end annotation


# instance fields
.field public final contactId:J

.field public final dataId:J

.field public final destination:Ljava/lang/String;

.field private destinationKind:I

.field public final destinationLabel:Ljava/lang/String;

.field public final destinationType:I

.field public final displayName:Ljava/lang/String;

.field public final displayNameSource:I

.field public final thumbnailUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    .line 160
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    .line 161
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    .line 162
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    .line 163
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    .line 164
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    .line 165
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    .line 166
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    .line 167
    return-void
.end method


# virtual methods
.method public getDestinationKind()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationKind:I

    return v0
.end method

.method public setDestinationKind(I)V
    .locals 0
    .parameter "destKind"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationKind:I

    .line 176
    return-void
.end method