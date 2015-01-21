.class public Lcom/mediatek/gallery3d/video/BookmarkActivity;
.super Landroid/app/Activity;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;,
        Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;
    }
.end annotation


# static fields
.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field private static final LOG:Z = true

.field private static final MENU_DELETE_ALL:I = 0x1

.field private static final MENU_DELETE_ONE:I = 0x2

.field private static final MENU_EDIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/BookmarkActivity"


# instance fields
.field private mAdapter:Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;

.field private mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/video/BookmarkActivity;)Lcom/mediatek/gallery3d/video/BookmarkEnhance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    return-object v0
.end method

.method private showEditDialog(Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;)V
    .locals 10
    .parameter "holder"

    .prologue
    const/4 v9, 0x0

    .line 211
    const-string v6, "Gallery2/VideoPlayer/BookmarkActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showEditDialog("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-nez p1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 217
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040008

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 218
    .local v5, v:Landroid/view/View;
    const v6, 0x7f0b000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 219
    .local v4, titleView:Landroid/widget/EditText;
    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 220
    .local v1, dataView:Landroid/widget/EditText;
    iget-object v6, p1, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v6, p1, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mData:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c02ce

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 226
    const v6, 0x7f0200d8

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 227
    const v6, 0x104000a

    new-instance v7, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;

    invoke-direct {v7, p0, p1, v4, v1}, Lcom/mediatek/gallery3d/video/BookmarkActivity$1;-><init>(Lcom/mediatek/gallery3d/video/BookmarkActivity;Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    const/high16 v6, 0x104

    invoke-virtual {v0, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 238
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 239
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 240
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 192
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 194
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->delete(J)I

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, obj:Ljava/lang/Object;
    instance-of v3, v1, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

    if-eqz v3, :cond_0

    .line 199
    check-cast v1, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/video/BookmarkActivity;->showEditDialog(Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;)V

    goto :goto_0

    .line 201
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    const-string v3, "Gallery2/VideoPlayer/BookmarkActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong context item info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "logo-bitmap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 56
    .local v7, logo:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mListView:Landroid/widget/ListView;

    .line 61
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mEmptyView:Landroid/widget/TextView;

    .line 63
    new-instance v0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    .line 64
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->query()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mCursor:Landroid/database/Cursor;

    .line 65
    new-instance v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;

    const v3, 0x7f040009

    const/4 v4, 0x0

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;-><init>(Lcom/mediatek/gallery3d/video/BookmarkActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mAdapter:Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;

    .line 66
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mAdapter:Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mAdapter:Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 185
    const/4 v0, 0x2

    const v1, 0x7f0c02bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 186
    const/4 v0, 0x3

    const v1, 0x7f0c02ce

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 187
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 100
    const v0, 0x7f0c0229

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mAdapter:Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mAdapter:Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 164
    .local v3, o:Ljava/lang/Object;
    instance-of v4, v3, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 165
    check-cast v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

    .line 166
    .local v0, holder:Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    const-string v2, "video/*"

    .line 170
    .local v2, mime:Ljava/lang/String;
    iget-object v4, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    iget-object v2, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    .line 173
    :cond_0
    iget-object v4, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mData:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 177
    .end local v0           #holder:Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mime:Ljava/lang/String;
    :cond_1
    const-string v4, "Gallery2/VideoPlayer/BookmarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->deleteAll()I

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 77
    return-void
.end method
