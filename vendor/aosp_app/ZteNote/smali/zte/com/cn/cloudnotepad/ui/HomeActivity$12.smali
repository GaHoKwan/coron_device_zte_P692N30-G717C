.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$12;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortSubNoteListByTitle(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    check-cast p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$12;->compare(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)I

    move-result v0

    return v0
.end method

.method public compare(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 994
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    iget-object v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
