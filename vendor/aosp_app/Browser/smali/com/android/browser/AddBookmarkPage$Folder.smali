.class Lcom/android/browser/AddBookmarkPage$Folder;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Folder"
.end annotation


# instance fields
.field Id:J

.field Name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "name"
    .parameter "id"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$Folder;->Name:Ljava/lang/String;

    .line 148
    iput-wide p2, p0, Lcom/android/browser/AddBookmarkPage$Folder;->Id:J

    .line 149
    return-void
.end method
