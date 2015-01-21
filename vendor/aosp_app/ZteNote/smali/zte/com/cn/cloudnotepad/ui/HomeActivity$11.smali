.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortSubNoteListByTime(Ljava/util/ArrayList;I)V
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

.field private final synthetic val$order:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;->val$order:I

    .line 964
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

    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;->compare(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)I

    move-result v0

    return v0
.end method

.method public compare(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)I
    .locals 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 968
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;->val$order:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 969
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-wide v1, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    iget-wide v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    sub-long/2addr v1, v3

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->longSubResult2Int(J)I
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$19(Lzte/com/cn/cloudnotepad/ui/HomeActivity;J)I

    move-result v0

    .line 971
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-wide v1, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    iget-wide v3, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    sub-long/2addr v1, v3

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->longSubResult2Int(J)I
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$19(Lzte/com/cn/cloudnotepad/ui/HomeActivity;J)I

    move-result v0

    goto :goto_0
.end method
