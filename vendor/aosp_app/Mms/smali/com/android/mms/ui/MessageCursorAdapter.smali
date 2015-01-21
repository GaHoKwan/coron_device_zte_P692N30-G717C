.class public Lcom/android/mms/ui/MessageCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageCursorAdapter.java"


# instance fields
.field protected mIsScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageCursorAdapter;->mIsScrolling:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "flags"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageCursorAdapter;->mIsScrolling:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageCursorAdapter;->mIsScrolling:Z

    .line 76
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 84
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIsScrolling(Z)V
    .locals 0
    .parameter "isScrolling"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageCursorAdapter;->mIsScrolling:Z

    .line 68
    return-void
.end method
