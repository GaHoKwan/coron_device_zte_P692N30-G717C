.class Lcom/android/music/SortCursor$1;
.super Landroid/database/DataSetObserver;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/SortCursor;


# direct methods
.method constructor <init>(Lcom/android/music/SortCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/music/SortCursor$1;->this$0:Lcom/android/music/SortCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/SortCursor$1;->this$0:Lcom/android/music/SortCursor;

    const/4 v1, -0x1

    #setter for: Landroid/database/AbstractCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/android/music/SortCursor;->access$002(Lcom/android/music/SortCursor;I)I

    .line 78
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/music/SortCursor$1;->this$0:Lcom/android/music/SortCursor;

    const/4 v1, -0x1

    #setter for: Landroid/database/AbstractCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/android/music/SortCursor;->access$102(Lcom/android/music/SortCursor;I)I

    .line 83
    return-void
.end method