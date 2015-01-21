.class public abstract Lcom/android/email/activity/ShortcutPickerFragment;
.super Landroid/app/ListFragment;
.source "ShortcutPickerFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;,
        Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;,
        Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;,
        Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;,
        Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADER_ID:I

.field private static final TO_VIEWS:[I


# instance fields
.field private final EMPTY_CALLBACK:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v0, v1

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment;->TO_VIEWS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/android/email/activity/ShortcutPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ShortcutPickerFragment$1;-><init>(Lcom/android/email/activity/ShortcutPickerFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->EMPTY_CALLBACK:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    .line 78
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->EMPTY_CALLBACK:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    .line 343
    return-void
.end method


# virtual methods
.method abstract getFromColumns()[Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 102
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 104
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    instance-of v0, p1, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment;->getFromColumns()[Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, fromColumns:[Ljava/lang/String;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040017

    sget-object v5, Lcom/android/email/activity/ShortcutPickerFragment;->TO_VIEWS:[I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 92
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 95
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 109
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/ShortcutPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 114
    return-void
.end method
