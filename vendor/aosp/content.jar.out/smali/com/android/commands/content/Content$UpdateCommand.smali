.class Lcom/android/commands/content/Content$UpdateCommand;
.super Lcom/android/commands/content/Content$InsertCommand;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCommand"
.end annotation


# instance fields
.field final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "userId"
    .parameter "contentValues"
    .parameter "where"

    .prologue
    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcom/android/commands/content/Content$InsertCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;)V

    .line 449
    iput-object p4, p0, Lcom/android/commands/content/Content$UpdateCommand;->mWhere:Ljava/lang/String;

    .line 450
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 4
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/commands/content/Content$InsertCommand;->mContentValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/commands/content/Content$UpdateCommand;->mWhere:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    return-void
.end method
